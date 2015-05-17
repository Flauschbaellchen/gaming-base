class CreateFlorensiaLanguages < ActiveRecord::Migration
  def up
    create_table :florensia_languages do |t|
      t.string :name, unique: true
      t.string :quest_language, unique: true
      t.datetime :created_at
    end
    Florensia::Language.create(name: :korea, quest_language: 'kr')
    Florensia::Language.create(name: :japan, quest_language: 'jp')
    Florensia::Language.create(name: :english, quest_language: 'en')
    Florensia::Language.create(name: :german, quest_language: 'ger')
    Florensia::Language.create(name: :italian, quest_language: 'it')
    Florensia::Language.create(name: :spanish, quest_language: 'esp')
    Florensia::Language.create(name: :portuguese, quest_language: 'pt')
    Florensia::Language.create(name: :french, quest_language: 'fr')
    Florensia::Language.create(name: :turkish, quest_language: 'tr')
    Florensia::Language.create(name: :china, quest_language: 'cn')
    Florensia::Language.create(name: :taiwan, quest_language: 'tw')
    Florensia::Language.create(name: :indonesia, quest_language: 'en')
  end

  def down
    drop_table :florensia_languages
  end
end
