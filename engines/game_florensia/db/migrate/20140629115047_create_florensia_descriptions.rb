class CreateFlorensiaDescriptions < ActiveRecord::Migration
  def change
    create_table :florensia_descriptions do |t|
      t.string :code, unique: true
      t.string :korea
      t.string :japan
      t.string :english
      t.string :german
      t.string :italian
      t.string :spanish
      t.string :portuguese
      t.string :french
      t.string :turkish
      t.string :china
      t.string :taiwan
      t.string :indonesia

      t.timestamps
    end
  end
end
