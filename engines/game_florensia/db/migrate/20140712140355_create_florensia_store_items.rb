class CreateFlorensiaStoreItems < ActiveRecord::Migration
  def change
    create_table :florensia_store_items do |t|
      t.references :npc
      t.references :item
      t.datetime :created_at
    end
    add_index :florensia_store_items, [:npc_id, :item_id], unique: true
  end
end
