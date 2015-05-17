class CreateFlorensiaItems < ActiveRecord::Migration
  def change

    create_table :florensia_item_indices do |t|

      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.references :metadata, polymorphic: true
      t.index :metadata_type

    end

    create_table :florensia_item_accessories do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.boolean :questitem, null: false
      t.boolean :gm_only, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :magic_defense, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_baits do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.integer :explosive_radius, null: false
      t.integer :defense, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_bullets do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.integer :explosive_radius, null: false
      t.integer :defense, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_cloaks do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_consumes do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :efficiency, null: false
      t.string :description_consume_id, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_crew_potions do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :efficiency, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :questitem, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_fish_materials do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_fishings do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_free_markets do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :description_id, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_fusion_help_breaks do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_gauntlets do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_guns do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_hats do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_knives do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_lowers do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_magic_balls do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_materials do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ornaments do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.boolean :questitem, null: false
      t.boolean :gm_only, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :magic_defense, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_pet_combine_helps do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_pet_combines do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_pets do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :efficiency, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_pet_skill_stones do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :description_id, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_quests do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price_disposal, null: false
      t.boolean :exchangeable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_quest_scrolls do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :description_id, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_random_box_changes do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :randombox_item_id_0, null: true
      t.integer :randombox_item_count_0, null: false
      t.integer :randombox_item_probability_0, null: false
      t.string :randombox_item_id_1, null: true
      t.integer :randombox_item_count_1, null: false
      t.integer :randombox_item_probability_1, null: false
      t.string :randombox_item_id_2, null: true
      t.integer :randombox_item_count_2, null: false
      t.integer :randombox_item_probability_2, null: false
      t.string :randombox_item_id_3, null: true
      t.integer :randombox_item_count_3, null: false
      t.integer :randombox_item_probability_3, null: false
      t.string :randombox_item_id_4, null: true
      t.integer :randombox_item_count_4, null: false
      t.integer :randombox_item_probability_4, null: false
      t.string :randombox_item_id_5, null: true
      t.integer :randombox_item_count_5, null: false
      t.integer :randombox_item_probability_5, null: false
      t.string :randombox_item_id_6, null: true
      t.integer :randombox_item_count_6, null: false
      t.integer :randombox_item_probability_6, null: false
      t.string :randombox_item_id_7, null: true
      t.integer :randombox_item_count_7, null: false
      t.integer :randombox_item_probability_7, null: false
      t.string :randombox_item_id_8, null: true
      t.integer :randombox_item_count_8, null: false
      t.integer :randombox_item_probability_8, null: false
      t.string :randombox_item_id_9, null: true
      t.integer :randombox_item_count_9, null: false
      t.integer :randombox_item_probability_9, null: false
      t.string :randombox_item_id_10, null: true
      t.integer :randombox_item_count_10, null: false
      t.integer :randombox_item_probability_10, null: false
      t.string :randombox_item_id_11, null: true
      t.integer :randombox_item_count_11, null: false
      t.integer :randombox_item_probability_11, null: false
      t.string :randombox_item_id_12, null: true
      t.integer :randombox_item_count_12, null: false
      t.integer :randombox_item_probability_12, null: false
      t.string :randombox_item_id_13, null: true
      t.integer :randombox_item_count_13, null: false
      t.integer :randombox_item_probability_13, null: false
      t.string :randombox_item_id_14, null: true
      t.integer :randombox_item_count_14, null: false
      t.integer :randombox_item_probability_14, null: false
      t.string :randombox_item_id_15, null: true
      t.integer :randombox_item_count_15, null: false
      t.integer :randombox_item_probability_15, null: false
      t.string :randombox_item_id_16, null: true
      t.integer :randombox_item_count_16, null: false
      t.integer :randombox_item_probability_16, null: false
      t.string :randombox_item_id_17, null: true
      t.integer :randombox_item_count_17, null: false
      t.integer :randombox_item_probability_17, null: false
      t.string :randombox_item_id_18, null: true
      t.integer :randombox_item_count_18, null: false
      t.integer :randombox_item_probability_18, null: false
      t.string :randombox_item_id_19, null: true
      t.integer :randombox_item_count_19, null: false
      t.integer :randombox_item_probability_19, null: false
      t.string :randombox_item_id_20, null: true
      t.integer :randombox_item_count_20, null: false
      t.integer :randombox_item_probability_20, null: false
      t.string :randombox_item_id_21, null: true
      t.integer :randombox_item_count_21, null: false
      t.integer :randombox_item_probability_21, null: false
      t.string :randombox_item_id_22, null: true
      t.integer :randombox_item_count_22, null: false
      t.integer :randombox_item_probability_22, null: false
      t.string :randombox_item_id_23, null: true
      t.integer :randombox_item_count_23, null: false
      t.integer :randombox_item_probability_23, null: false
      t.string :randombox_item_id_24, null: true
      t.integer :randombox_item_count_24, null: false
      t.integer :randombox_item_probability_24, null: false
      t.string :randombox_item_id_25, null: true
      t.integer :randombox_item_count_25, null: false
      t.integer :randombox_item_probability_25, null: false
      t.string :randombox_item_id_26, null: true
      t.integer :randombox_item_count_26, null: false
      t.integer :randombox_item_probability_26, null: false
      t.string :randombox_item_id_27, null: true
      t.integer :randombox_item_count_27, null: false
      t.integer :randombox_item_probability_27, null: false
      t.string :randombox_item_id_28, null: true
      t.integer :randombox_item_count_28, null: false
      t.integer :randombox_item_probability_28, null: false
      t.string :randombox_item_id_29, null: true
      t.integer :randombox_item_count_29, null: false
      t.integer :randombox_item_probability_29, null: false
      t.string :randombox_item_id_30, null: true
      t.integer :randombox_item_count_30, null: false
      t.integer :randombox_item_probability_30, null: false
      t.string :randombox_item_id_31, null: true
      t.integer :randombox_item_count_31, null: false
      t.integer :randombox_item_probability_31, null: false
      t.string :randombox_item_id_32, null: true
      t.integer :randombox_item_count_32, null: false
      t.integer :randombox_item_probability_32, null: false
      t.string :randombox_item_id_33, null: true
      t.integer :randombox_item_count_33, null: false
      t.integer :randombox_item_probability_33, null: false
      t.string :randombox_item_id_34, null: true
      t.integer :randombox_item_count_34, null: false
      t.integer :randombox_item_probability_34, null: false
      t.string :randombox_item_id_35, null: true
      t.integer :randombox_item_count_35, null: false
      t.integer :randombox_item_probability_35, null: false
      t.string :randombox_item_id_36, null: true
      t.integer :randombox_item_count_36, null: false
      t.integer :randombox_item_probability_36, null: false
      t.string :randombox_item_id_37, null: true
      t.integer :randombox_item_count_37, null: false
      t.integer :randombox_item_probability_37, null: false
      t.string :randombox_item_id_38, null: true
      t.integer :randombox_item_count_38, null: false
      t.integer :randombox_item_probability_38, null: false
      t.string :randombox_item_id_39, null: true
      t.integer :randombox_item_count_39, null: false
      t.integer :randombox_item_probability_39, null: false
      t.string :randombox_item_id_40, null: true
      t.integer :randombox_item_count_40, null: false
      t.integer :randombox_item_probability_40, null: false
      t.string :randombox_item_id_41, null: true
      t.integer :randombox_item_count_41, null: false
      t.integer :randombox_item_probability_41, null: false
      t.string :randombox_item_id_42, null: true
      t.integer :randombox_item_count_42, null: false
      t.integer :randombox_item_probability_42, null: false
      t.string :randombox_item_id_43, null: true
      t.integer :randombox_item_count_43, null: false
      t.integer :randombox_item_probability_43, null: false
      t.string :randombox_item_id_44, null: true
      t.integer :randombox_item_count_44, null: false
      t.integer :randombox_item_probability_44, null: false
      t.string :randombox_item_id_45, null: true
      t.integer :randombox_item_count_45, null: false
      t.integer :randombox_item_probability_45, null: false
      t.string :randombox_item_id_46, null: true
      t.integer :randombox_item_count_46, null: false
      t.integer :randombox_item_probability_46, null: false
      t.string :randombox_item_id_47, null: true
      t.integer :randombox_item_count_47, null: false
      t.integer :randombox_item_probability_47, null: false
      t.string :randombox_item_id_48, null: true
      t.integer :randombox_item_count_48, null: false
      t.integer :randombox_item_probability_48, null: false
      t.string :randombox_item_id_49, null: true
      t.integer :randombox_item_count_49, null: false
      t.integer :randombox_item_probability_49, null: false
      t.string :randombox_item_id_50, null: true
      t.integer :randombox_item_count_50, null: false
      t.integer :randombox_item_probability_50, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_random_boxes do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.string :randombox_item_id_0, null: true
      t.integer :randombox_item_count_0, null: false
      t.integer :randombox_item_probability_0, null: false
      t.string :randombox_item_id_1, null: true
      t.integer :randombox_item_count_1, null: false
      t.integer :randombox_item_probability_1, null: false
      t.string :randombox_item_id_2, null: true
      t.integer :randombox_item_count_2, null: false
      t.integer :randombox_item_probability_2, null: false
      t.string :randombox_item_id_3, null: true
      t.integer :randombox_item_count_3, null: false
      t.integer :randombox_item_probability_3, null: false
      t.string :randombox_item_id_4, null: true
      t.integer :randombox_item_count_4, null: false
      t.integer :randombox_item_probability_4, null: false
      t.string :randombox_item_id_5, null: true
      t.integer :randombox_item_count_5, null: false
      t.integer :randombox_item_probability_5, null: false
      t.string :randombox_item_id_6, null: true
      t.integer :randombox_item_count_6, null: false
      t.integer :randombox_item_probability_6, null: false
      t.string :randombox_item_id_7, null: true
      t.integer :randombox_item_count_7, null: false
      t.integer :randombox_item_probability_7, null: false
      t.string :randombox_item_id_8, null: true
      t.integer :randombox_item_count_8, null: false
      t.integer :randombox_item_probability_8, null: false
      t.string :randombox_item_id_9, null: true
      t.integer :randombox_item_count_9, null: false
      t.integer :randombox_item_probability_9, null: false
      t.string :randombox_item_id_10, null: true
      t.integer :randombox_item_count_10, null: false
      t.integer :randombox_item_probability_10, null: false
      t.string :randombox_item_id_11, null: true
      t.integer :randombox_item_count_11, null: false
      t.integer :randombox_item_probability_11, null: false
      t.string :randombox_item_id_12, null: true
      t.integer :randombox_item_count_12, null: false
      t.integer :randombox_item_probability_12, null: false
      t.string :randombox_item_id_13, null: true
      t.integer :randombox_item_count_13, null: false
      t.integer :randombox_item_probability_13, null: false
      t.string :randombox_item_id_14, null: true
      t.integer :randombox_item_count_14, null: false
      t.integer :randombox_item_probability_14, null: false
      t.string :randombox_item_id_15, null: true
      t.integer :randombox_item_count_15, null: false
      t.integer :randombox_item_probability_15, null: false
      t.string :randombox_item_id_16, null: true
      t.integer :randombox_item_count_16, null: false
      t.integer :randombox_item_probability_16, null: false
      t.string :randombox_item_id_17, null: true
      t.integer :randombox_item_count_17, null: false
      t.integer :randombox_item_probability_17, null: false
      t.string :randombox_item_id_18, null: true
      t.integer :randombox_item_count_18, null: false
      t.integer :randombox_item_probability_18, null: false
      t.string :randombox_item_id_19, null: true
      t.integer :randombox_item_count_19, null: false
      t.integer :randombox_item_probability_19, null: false
      t.string :randombox_item_id_20, null: true
      t.integer :randombox_item_count_20, null: false
      t.integer :randombox_item_probability_20, null: false
      t.string :randombox_item_id_21, null: true
      t.integer :randombox_item_count_21, null: false
      t.integer :randombox_item_probability_21, null: false
      t.string :randombox_item_id_22, null: true
      t.integer :randombox_item_count_22, null: false
      t.integer :randombox_item_probability_22, null: false
      t.string :randombox_item_id_23, null: true
      t.integer :randombox_item_count_23, null: false
      t.integer :randombox_item_probability_23, null: false
      t.string :randombox_item_id_24, null: true
      t.integer :randombox_item_count_24, null: false
      t.integer :randombox_item_probability_24, null: false
      t.string :randombox_item_id_25, null: true
      t.integer :randombox_item_count_25, null: false
      t.integer :randombox_item_probability_25, null: false
      t.string :randombox_item_id_26, null: true
      t.integer :randombox_item_count_26, null: false
      t.integer :randombox_item_probability_26, null: false
      t.string :randombox_item_id_27, null: true
      t.integer :randombox_item_count_27, null: false
      t.integer :randombox_item_probability_27, null: false
      t.string :randombox_item_id_28, null: true
      t.integer :randombox_item_count_28, null: false
      t.integer :randombox_item_probability_28, null: false
      t.string :randombox_item_id_29, null: true
      t.integer :randombox_item_count_29, null: false
      t.integer :randombox_item_probability_29, null: false
      t.string :randombox_item_id_30, null: true
      t.integer :randombox_item_count_30, null: false
      t.integer :randombox_item_probability_30, null: false
      t.string :randombox_item_id_31, null: true
      t.integer :randombox_item_count_31, null: false
      t.integer :randombox_item_probability_31, null: false
      t.string :randombox_item_id_32, null: true
      t.integer :randombox_item_count_32, null: false
      t.integer :randombox_item_probability_32, null: false
      t.string :randombox_item_id_33, null: true
      t.integer :randombox_item_count_33, null: false
      t.integer :randombox_item_probability_33, null: false
      t.string :randombox_item_id_34, null: true
      t.integer :randombox_item_count_34, null: false
      t.integer :randombox_item_probability_34, null: false
      t.string :randombox_item_id_35, null: true
      t.integer :randombox_item_count_35, null: false
      t.integer :randombox_item_probability_35, null: false
      t.string :randombox_item_id_36, null: true
      t.integer :randombox_item_count_36, null: false
      t.integer :randombox_item_probability_36, null: false
      t.string :randombox_item_id_37, null: true
      t.integer :randombox_item_count_37, null: false
      t.integer :randombox_item_probability_37, null: false
      t.string :randombox_item_id_38, null: true
      t.integer :randombox_item_count_38, null: false
      t.integer :randombox_item_probability_38, null: false
      t.string :randombox_item_id_39, null: true
      t.integer :randombox_item_count_39, null: false
      t.integer :randombox_item_probability_39, null: false
      t.string :randombox_item_id_40, null: true
      t.integer :randombox_item_count_40, null: false
      t.integer :randombox_item_probability_40, null: false
      t.string :randombox_item_id_41, null: true
      t.integer :randombox_item_count_41, null: false
      t.integer :randombox_item_probability_41, null: false
      t.string :randombox_item_id_42, null: true
      t.integer :randombox_item_count_42, null: false
      t.integer :randombox_item_probability_42, null: false
      t.string :randombox_item_id_43, null: true
      t.integer :randombox_item_count_43, null: false
      t.integer :randombox_item_probability_43, null: false
      t.string :randombox_item_id_44, null: true
      t.integer :randombox_item_count_44, null: false
      t.integer :randombox_item_probability_44, null: false
      t.string :randombox_item_id_45, null: true
      t.integer :randombox_item_count_45, null: false
      t.integer :randombox_item_probability_45, null: false
      t.string :randombox_item_id_46, null: true
      t.integer :randombox_item_count_46, null: false
      t.integer :randombox_item_probability_46, null: false
      t.string :randombox_item_id_47, null: true
      t.integer :randombox_item_count_47, null: false
      t.integer :randombox_item_probability_47, null: false
      t.string :randombox_item_id_48, null: true
      t.integer :randombox_item_count_48, null: false
      t.integer :randombox_item_probability_48, null: false
      t.string :randombox_item_id_49, null: true
      t.integer :randombox_item_count_49, null: false
      t.integer :randombox_item_probability_49, null: false
      t.string :randombox_item_id_50, null: true
      t.integer :randombox_item_count_50, null: false
      t.integer :randombox_item_probability_50, null: false
      t.string :randombox_item_id_51, null: true
      t.integer :randombox_item_count_51, null: false
      t.integer :randombox_item_probability_51, null: false
      t.string :randombox_item_id_52, null: true
      t.integer :randombox_item_count_52, null: false
      t.integer :randombox_item_probability_52, null: false
      t.string :randombox_item_id_53, null: true
      t.integer :randombox_item_count_53, null: false
      t.integer :randombox_item_probability_53, null: false
      t.string :randombox_item_id_54, null: true
      t.integer :randombox_item_count_54, null: false
      t.integer :randombox_item_probability_54, null: false
      t.string :randombox_item_id_55, null: true
      t.integer :randombox_item_count_55, null: false
      t.integer :randombox_item_probability_55, null: false
      t.string :randombox_item_id_56, null: true
      t.integer :randombox_item_count_56, null: false
      t.integer :randombox_item_probability_56, null: false
      t.string :randombox_item_id_57, null: true
      t.integer :randombox_item_count_57, null: false
      t.integer :randombox_item_probability_57, null: false
      t.string :randombox_item_id_58, null: true
      t.integer :randombox_item_count_58, null: false
      t.integer :randombox_item_probability_58, null: false
      t.string :randombox_item_id_59, null: true
      t.integer :randombox_item_count_59, null: false
      t.integer :randombox_item_probability_59, null: false
      t.string :randombox_item_id_60, null: true
      t.integer :randombox_item_count_60, null: false
      t.integer :randombox_item_probability_60, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_recipes do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :recipe_target_id, null: false
      t.string :recipe_material_1, null: true
      t.integer :recipe_requirement_1, null: false
      t.string :recipe_material_2, null: true
      t.integer :recipe_requirement_2, null: false
      t.string :recipe_material_3, null: true
      t.integer :recipe_requirement_3, null: false
      t.string :recipe_material_4, null: true
      t.integer :recipe_requirement_4, null: false
      t.string :recipe_material_5, null: true
      t.integer :recipe_requirement_5, null: false
      t.string :recipe_material_6, null: true
      t.integer :recipe_requirement_6, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_return_stones do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :efficiency, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :questitem, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_riding_pets do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :efficiency, null: false
      t.string :description_consume_id, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_seal_help_breaks do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_shells do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.integer :explosive_radius, null: false
      t.integer :defense, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_shields do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_anchors do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_bodies do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_c_weapons do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_figures do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_flags do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_fronts do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_head_masts do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_magic_stones do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_mainmasts do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_n_weapons do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_rears do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_ship_tail_masts do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :class_sea
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.integer :ship_defense, null: false
      t.integer :ship_range, null: false
      t.integer :critical, null: false
      t.integer :ship_reloadspeed, null: false
      t.integer :ship_guns_front, null: false
      t.integer :ship_guns_side, null: false
      t.integer :ship_guns_speed, null: false
      t.integer :ship_hitrange, null: false
      t.integer :physical_defense, null: false
      t.integer :protection, null: false
      t.integer :ability_hp, null: false
      t.integer :ship_wind_favorable, null: false
      t.integer :ship_wind_adverse, null: false
      t.integer :ship_acceleration, null: false
      t.integer :ship_deceleration, null: false
      t.integer :ship_turnpower, null: false
      t.integer :ability_en, null: false
      t.integer :ability_en_recovery, null: false
      t.integer :ability_en_usage, null: false
      t.integer :balance, null: false
      t.float :npc_price_disposal, null: false
      t.float :npc_price_tuning, null: false
      t.integer :bonus_code_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_shoes do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_skill_books do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.string :description_id, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_std_materials do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_trade_materials do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.integer :rare_grade, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_upgrade_helps do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_upgrade_materials do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :questitem, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_upgrade_musts do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_upgrade_stones do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.boolean :questitem, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_uppers do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :level_land, null: false, index: true
      t.integer :level_sea, null: false, index: true
      t.integer :ability_str, null: false
      t.integer :ability_dex, null: false
      t.integer :ability_con, null: false
      t.integer :ability_int, null: false
      t.integer :ability_wis, null: false
      t.integer :ability_vol, null: false
      t.integer :rare_grade, null: false
      t.string :upgrade_rule_id, null: true
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :physical_defense_min, null: false
      t.integer :physical_defense_max, null: false
      t.integer :magic_defense_min, null: false
      t.integer :magic_defense_max, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :range, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.integer :bonus_code_1
      t.string :bonus_operator_1
      t.float :bonus_1, null: false
      t.integer :bonus_code_2
      t.string :bonus_operator_2
      t.float :bonus_2, null: false
      t.integer :bonus_code_3
      t.string :bonus_operator_3
      t.float :bonus_3, null: false
      t.integer :bonus_code_4
      t.string :bonus_operator_4
      t.float :bonus_4, null: false
      t.integer :bonus_code_5
      t.string :bonus_operator_5
      t.float :bonus_5, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.boolean :shopable, null: false
      t.integer :duration
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

    create_table :florensia_item_weapons do |t|
      t.string :item_id, null: false
      t.index :item_id, unique: true
      t.boolean :female
      t.string :class_land
      t.integer :rare_grade, null: false
      t.string :itemtype, null: false
      t.boolean :two_handed, null: false
      t.integer :defense, null: false
      t.integer :physical_defense, null: false
      t.integer :attack_speed, null: false
      t.integer :magic_defense, null: false
      t.integer :critical, null: false
      t.boolean :questitem, null: false
      t.float :npc_price, null: false
      t.float :npc_price_disposal, null: false
      t.boolean :tradable, null: false
      t.boolean :exchangeable, null: false
      t.string :image_icon_id
      t.string :image_character_id
      t.timestamps
    end

  end
end
