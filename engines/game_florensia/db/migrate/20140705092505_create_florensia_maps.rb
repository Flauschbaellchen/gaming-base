class CreateFlorensiaMaps < ActiveRecord::Migration
  def change
    create_table :florensia_maps do |t|
      t.string :area_code, null: false, default: "", index: true
      t.string :img_code, null: false, default: ""
      t.references :map, index: true
      t.string :ltwh, null: false, default: ""

      t.timestamps
    end
  end
end
