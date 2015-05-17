module UpdateHelper
  class File
    attr_reader :name
    def initialize(name)
      @name = name
    end

    def to_s
      self.name
    end

    def download_to(dest)
      debug "Downloading #{self} to #{dest}\r"
      begin
        FileUtils.mkdir_p(dest)
        file = tmp_root_path.join("download.tmp")
        open(file, "wb") do |file|
          begin
          url = Rails.application.secrets.florensia["auto_update"]["update_server_root_url"] + "/#{self.name}.zip"
          file << open(url).read
          rescue
            error "Error while downloading #{url}: #{$!}"
            return
          end
        end

        Zip::File.open(file) do |zip|
          file = zip.first
          begin
            file.extract(dest.join(file.name))
          rescue Zip::DestinationFileExistsError
            log "  Extraction skipped: #{dest.join(file.name)} already exists"
          end
        end
        return true
      ensure
        FileUtils.rm(tmp_root_path.join("download.tmp"))
      end
      false
    end
  end
end