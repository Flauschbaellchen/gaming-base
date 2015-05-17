# encoding: utf-8
require 'fileutils'

namespace :florensia do

  desc "Loads client/server data of Florensia and update them to the database"
  task :update => [
    :environment,
    :cleanup,
    :version,
    :translations,
    :icons,
    :npcs,
    :maps,
    :items,
    :quests
  ] do
    log "Finished."
  end


  desc "Cleans up leftovers and downloaded files of last update run"
  task cleanup: :environment do
    log "Cleanup old files..."
    FileUtils.rm_rf(tmp_root_path)
    FileUtils.mkdir_p(tmp_root_path)
  end

  desc "Parses version.bin and provides @datapool (FlorensiaAutoUpdate::Version) for access"
  task version: :environment do
    log "Parsing version meta data..."
    @datapool = UpdateHelper::FileReader::FlorensiaVersion.new(Rails.application.secrets.florensia["auto_update"]["update_server_root_url"] + "/version.bin")
  end


  desc "Loads game's translation data"
  task translations: [:environment, :version] do
    dest = tmp_root_path.join("translations")

    log "Loading translation and description data into tmp. directory..."

    # names and descriptions (skills, maps, items...)

    translations = @datapool.find(/(Str|Desc).dat$/)
    translations.map do |f|
      f.download_to(dest)
    end

    log "Parsing translation and description data..."
    parse_translation_file(dest.join("*Str.dat"), Florensia::Translation)
    parse_translation_file(dest.join("*Desc.dat"), Florensia::Description)

    translations = @datapool.find(/StringData_.+.in_$/)
    translations.map do |f|
      f.download_to(dest)
    end

    # Quest translations

    mapping = UpdateHelper::Mapper::SimpleHash.new(
      'Title' => 'title',
      'Mission1' => 'mission_1_title',
      'Mission2' => 'mission_2_title',
      'Mission3' => 'mission_3_title',
      'desc' => 'description'
    )

    batch(Dir[dest.join("StringData_*.in_")]) do |f|
      log "  Parsing #{f} (#{i+1}/#{files.length})\r"
      lid = f.match(/StringData_(.+).in_$/)[1].downcase
      unless language = Florensia::Language.find_by_quest_language(lid)
        error "Cannot find quest language association in Florensia::Language for '#{lid}'"
        raise "Quest Language Error"
      end

      data = open(f, "rb").read
      data.encode!('utf-8', 'utf-16')

      #escapes [section] to \[section\] if its within a text, e.g. desc
      data.gsub!(/((?!^)\[(?<text>[^\]]+)\]|\[(?<text>[^\]]+)\](?![\r\n]))/, '\[\k<text>\]')
      #workaround for unmatched quotes
      data.sub!("'Tek-elli Rehber Kılıcı\" ('One-handed Tutorial Sword')", "'Tek-elli Rehber Kılıcı' ('One-handed Tutorial Sword')") if lid=="tr"
      data.sub!('finishDlg=J"suis sûre que', "finishDlg=J'suis sûre que") if lid=="fr"

      data = IniFile.new(content: data).to_h
      data.each do |questid, questdata|
        questdata = mapping.map(questdata)
        questtrans = Florensia::QuestTranslation.where(
                      quest_id: questid,
                      language: language
                    ).first_or_initialize
        questtrans.update(questdata)        
      end
    end
  end

  desc "Loads map data intpo database"
  task maps: [:environment, :version] do
    log "Loading maps..."
    dest = tmp_root_path.join("maps")
    mapfiles = @datapool.find(/(MiniMapFactorial.xml|_MiniMap.ini)$/)
    mapfiles.map do |f|
      f.download_to(dest)
    end
    mapfactory = Nokogiri::XML(open(dest.join("MiniMapFactorial.xml")).read)
    maps = mapfactory.search("class//class")
    maps.each do |m_cfg|
      map = Florensia::Map.where(area_code: m_cfg.attr("AreaCode")).first_or_initialize
      #get parent map if possible
      map.map = Florensia::Map.find_by_area_code(m_cfg.parent.attr("AreaCode"))
      # load ini-id from itself or from parent
      ini_id = m_cfg.attr("id") || m_cfg.parent.attr("id") 
      #load LTWH settings from file
      ini_file_name = dest.join("map_#{ini_id}_MiniMap.ini")
      begin
        data = IniFile.new(content: open(ini_file_name).read).to_h
        map.ltwh = data['MiniMapInfo']['LTWH']
      rescue
        error "  Warning: #{m_cfg.attr("AreaCode")} mapfile not found: #{ini_file_name}"
        map.ltwh = map.map.ltwh if map.map
      end
      map.img_code = ini_id
      map.save
    end
  end

  desc "Downloads models (NPCs/items)"
  task models: [:environment, :version] do
    log "Downloading and parsing models (NPCs/Items)..."
    dest = tmp_root_path.join("models")
    # models itself
    mapfiles = @datapool.find(/ServerTable\/s_[a-z]+\.bin$/i)
    mapfiles.map do |f|
      f.download_to(dest)
    end
    # image-assocs
    res_files = @datapool.find(/ClientTable\/c_[a-z]+Res\.bin$/i)
    res_files.map do |f|
      f.download_to(dest)
    end
  end

  desc "Loading NPC data into database"
  task npcs: [:environment, :version, :models, :icons] do
    log "Loading NPC data into database..."

    Rails.application.secrets.florensia["auto_update"]['npc_files'].each do |f|
      # loading basic data
      file = UpdateHelper::FileReader::FlorensiaBin.new(tmp_root_path.join("models").to_s << "/s_#{f}.bin")

      mapper = UpdateHelper::Mapper::Florensia::NpcModel.new
      mapper.load(file.header, file.datasets)
    end

    Rails.application.secrets.florensia["auto_update"]['npc_files'].each do |f|
      # loading image_id
      file = UpdateHelper::FileReader::FlorensiaBin.new(tmp_root_path.join("models").to_s << "/c_#{f}Res.bin")
      
      mapper = UpdateHelper::Mapper::Florensia::NpcAsset.new
      mapper.load(file.header, file.datasets)
    end
  end

  desc "Loads store data into database"
  task store: [:environment, :version, :npcs, :items] do
    log "Loading store data into database..."
    # get all current entries and "mark" them
    old_entries = Florensia::StoreItem.all.map{|e| [e.item_id, e.npc_id]}
    log "  #{old_entries.count} entries are currently listed"

    @datapool.find(/ServerTable\/StoreData\.xml$/i).first.download_to(tmp_root_path.join("models"))
    xml = open(tmp_root_path.join("models", "StoreData.xml")).read

    storeitems = Nokogiri::XML(xml).search('StoreItem')
    log "  Found #{storeitems.count} item-npc references"
    storeitems.each do |storeitem|
      item = Florensia::Item.find_by_item_id(n.attr("ItemCode"))
      npc = Florensia::Npc.find_by_npc_id(n.parent.parent.name)
      # unmark entries which are found again in the listing
      unless old_entries.delete([item.id, npc.id])
        # not marked, thus it didn't exist before
        Florensia::StoreItem.create(item: item, npc: npc)
      end
    end
    # now delete all entries which are still marked
    log "  #{old_entries.count} entries are discontinued and will be deleted"
    batch(old_entries) do |old|
      Florensia::StoreItem.where(item_id: old[0], npc_id: old[1]).destroy
    end
  end


  desc "Loads item data into database"
  task items: [:environment, :version, :models, :icons] do
    log "Loading item data into database..."

    batch(Dir[tmp_root_path.join("models", "s_*Item.bin")].sort) do |f|

      game_class_name = f.match(/s_(.*)Item.bin$/)[1]
      class_name = "Florensia::Item::#{game_class_name}"

      file = UpdateHelper::FileReader::FlorensiaBin.new(f)

      mapper_name = "UpdateHelper::Mapper::Florensia::Item::#{game_class_name}Model"
      mapper = mapper_name.constantize.new
      mapper.load(file.header, file.datasets)


      # loading image_id
      res_file = tmp_root_path.join("models").to_s << "/c_#{game_class_name}ItemRes.bin"
      if File.exists?(res_file)
        file = UpdateHelper::FileReader::FlorensiaBin.new(res_file)
        mapper = UpdateHelper::Mapper::Florensia::ItemAsset.new
        mapper.load(file.header, file.datasets, model: class_name.constantize)
      else
        error "#{class_name} without res-information. File not found: #{res_file}"
      end

      true # pseudo state for batch operator
    end
  end


  desc "Loads icon data and saved them as seperated files"
  task icons: [:environment, :version] do

    FileUtils.mkdir_p(icon_path.join("items"))
    FileUtils.mkdir_p(icon_path.join("npcs"))

    log "Downloading icons (NPCs)..."
    mapfiles = @datapool.find(/Monster\/.+\/.+\.png$/i)
    mapfiles.map do |f|
      f.download_to(icon_path.join("npcs"))
    end

    log "Downloading icons (items)..."
    dest = tmp_root_path.join("icons")
    mapfiles = @datapool.find(/Icon\/[a-z]{3}\.png$/i)
    mapfiles.map do |f|
      f.download_to(dest)
    end

    batch(Dir[dest.join("*.png")]) do |f|
      icon_suffix = File.basename(f, ".png")

      # load image
      image = MiniMagick::Image.open(f)

      # icons have a width/height of 32px
      height = 32
      width = 32

      rows = image.height / height
      columns = image.width / width

      icon_id = 0
      0.upto(rows - 1) do |row|
        0.upto(columns - 1) do |column|
          offset = "+#{column*width}+#{row*height}"
          icon_name = "#{icon_suffix}#{icon_id.to_s.rjust(3, "0")}.png"

          image = MiniMagick::Image.open(f)
          icon = image.crop("#{width}x#{height}#{offset}")
          icon.write(icon_path.join("items", icon_name))
          
          icon_id += 1
        end
      end
    end
  end







  desc "Loads quest data into database"
  #task quests: [:environment, :version, :maps, :npcs, :items] do
  task quests: [:environment, :version] do
    log "Loading quests..."
    dest = tmp_root_path.join("quests")
    quests = @datapool.find(/QuestData\/.+.xml$/)
    quests.map do |f|
      next if /^(StringData|QuestIndex|QuestListIndex)/i.match(f.name)
      #f.download_to(dest)
    end

    batch(Dir[dest.join("*.xml")]) do |f|
      quest = Florensia::Quest.where(quest_id: File.basename(f, ".xml")).first_or_initialize
      quest.xml = open(f).read
      quest.save
    end
  end


  ## Helper methods

  def batch(elements)
    start_time = Time.now
    invalid = 0
    elements.each_with_index do |element, index|
      index += 1
      current_time = Time.now-start_time
      time_left = current_time / index * (elements.length - index)
      debug "[#{index}/#{elements.length}, #{invalid} errors, #{Time.at(time_left.to_i).utc.strftime("%H:%M:%S")} ETA] #{element}\r"
      unless yield element
        error "Error on #{element}"
        invalid += 1
      end
    end
    log "Batch finished: #{elements.length} elements, #{invalid} errors (#{Time.now-start_time}s)"
  end

  def tmp_root_path
    Rails.root.join("tmp", "florensia-auto-update")
  end

  def icon_path
    Rails.root.join("public", "assets", "florensia", "icons")
  end


  # task :translation helper method
  def parse_translation_file(pattern, model)
    # check if all languages have an associated column name
    Florensia::Language.all.map(&:name).each do |l|
      next if model.columns.map(&:name).include?(l)
      error "Fatal error: '#{l}' not found in column names of {model.name} but within Florensia::Language"
      raise "Translation/Description Language Error"
    end

    batch(Dir[pattern]) do |f|
      data = open(f).read # reading file
      data.encode!('utf-8', 'utf-16') # fix encoding
      data = data.split("\r\n") # split into lines
      data.pop # delete __END

      # working on header/languages
      header = data.shift.downcase.split("\t")
      header.shift # 'Code' an identifier, not a language
      #check if we have all languages in our system
      header.delete("name") # that's not a language but is included in Descriptions
      header.each do |l|
        next if model.columns.map(&:name).include?(l)
        error "Fatal error: '#{l}' not found in column names of #{model.name}"
        raise "Translation/Description Language Error"
      end

      # working on the datasets itself
      data.each do |line|
        line = line.split("\t")
        code = line.shift #first column is the identifier
        line.shift if model == Florensia::Description #second column is unused 'name' in description files
        line.collect!{|text| text.gsub('\n', "\n")} #fix line breaks
        t = model.where(code: code).first_or_initialize
        t.update_attributes(Hash[header.zip(line)])
      end
    end
  end
end
