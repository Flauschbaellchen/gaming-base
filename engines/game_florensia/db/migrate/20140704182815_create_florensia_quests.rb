class CreateFlorensiaQuests < ActiveRecord::Migration
  def change
    create_table :florensia_quests do |t|
      t.string :quest_id, unique: true
      t.string :source_npc_id, index: true
      t.string :dest_npc_id, index: true
      t.references :map
      t.integer :level, index: true
      t.string :previous_quest_id, index: true
      t.string :next_quest_id, index: true
      t.string :class_land, null: false
      t.text :xml

      t.timestamps
    end
  end
end
