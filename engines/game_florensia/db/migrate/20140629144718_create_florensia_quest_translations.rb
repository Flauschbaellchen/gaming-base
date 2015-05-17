class CreateFlorensiaQuestTranslations < ActiveRecord::Migration
  def change
    create_table :florensia_quest_translations do |t|
      t.references :language
      t.string :quest_id
      t.string :title
      t.string :mission_1_title
      t.string :mission_2_title
      t.string :mission_3_title
      t.text :description
      t.text :preDlg
      t.text :startDlg
      t.text :runDlg
      t.text :finishDlg

      t.timestamps
    end
    add_index :florensia_quest_translations, [:language_id, :quest_id], unique: true
  end
end
