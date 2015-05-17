class CreateFlorensiaNpcs < ActiveRecord::Migration
  def change
    create_table :florensia_npcs do |t|

      t.string :npc_id, unique: true, null: false
      t.string :image_id
      t.integer :npc_type, index: true, null: false
      t.boolean :inanimated, null: false, default: false
      t.boolean :air, null: false, default: false
      t.integer :level, index: true, null: false
      t.integer :exp_points, index: true, null: false
      t.integer :mana_points, null: false
      t.integer :body_width, null: false
      t.integer :body_height, null: false
      t.integer :heal_points, index: true, null: false
      t.integer :attack_rate_min, null: false
      t.integer :attack_rate_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :magic_defense, null: false
      t.integer :required_hitrate, null: false
      t.integer :naval_guns_count, null: false
      t.integer :naval_guns_speed, null: false
      t.integer :naval_guns_scope, null: false
      t.integer :ship_turnpower, null: false
      t.integer :attack_cooldown_1, null: false
      t.integer :attack_cooldown_2, null: false
      t.integer :attack_cooldown_3, null: false
      t.integer :attack_cooldown_4, null: false
      t.boolean :melee, null: false, default: false
      t.string :action_id_1, index: true
      t.integer :action_ratio_1, null: false
      t.string :action_id_2, index: true
      t.integer :action_ratio_2, null: false
      t.integer :attack_element, null: false
      t.integer :resistance_element, null: false
      t.integer :attack_illusion, null: false
      t.integer :resistance_illusion, null: false
      t.integer :attack_holy, null: false
      t.integer :resistance_holy, null: false
      t.integer :attack_dark, null: false
      t.integer :resistance_dark, null: false
      t.integer :attack_physical, null: false
      t.integer :resistance_physical, null: false
      t.integer :attack_poison, null: false
      t.integer :resistance_poison, null: false
      t.integer :attack_fire, null: false
      t.integer :resistance_fire, null: false
      t.integer :attack_ice, null: false
      t.integer :resistance_ice, null: false
      t.integer :attack_lightning, null: false
      t.integer :resistance_lightning, null: false
      t.integer :attack_physical_holy, null: false
      t.integer :resistance_physical_holy, null: false
      t.integer :attack_absolute, null: false
      t.integer :resistance_absolute, null: false

      t.timestamps
    end
  end
end
