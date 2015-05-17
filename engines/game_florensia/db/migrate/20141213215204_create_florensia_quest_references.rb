class CreateFlorensiaQuestReferences < ActiveRecord::Migration
  def change
    create_table :florensia_quest_references do |t|
      t.references :quest
      t.references :reference, polymorphic: true
    end
  end
end
