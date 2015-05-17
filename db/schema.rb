# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141213215204) do

  create_table "florensia_descriptions", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "korea",      limit: 255
    t.string   "japan",      limit: 255
    t.string   "english",    limit: 255
    t.string   "german",     limit: 255
    t.string   "italian",    limit: 255
    t.string   "spanish",    limit: 255
    t.string   "portuguese", limit: 255
    t.string   "french",     limit: 255
    t.string   "turkish",    limit: 255
    t.string   "china",      limit: 255
    t.string   "taiwan",     limit: 255
    t.string   "indonesia",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "florensia_item_accessories", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.boolean  "female",             limit: 1
    t.string   "class_land",         limit: 255
    t.integer  "level_land",         limit: 4,   null: false
    t.integer  "level_sea",          limit: 4,   null: false
    t.integer  "ability_str",        limit: 4,   null: false
    t.integer  "ability_dex",        limit: 4,   null: false
    t.integer  "ability_con",        limit: 4,   null: false
    t.integer  "ability_int",        limit: 4,   null: false
    t.integer  "ability_wis",        limit: 4,   null: false
    t.integer  "ability_vol",        limit: 4,   null: false
    t.integer  "rare_grade",         limit: 4,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.boolean  "gm_only",            limit: 1,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.integer  "magic_defense",      limit: 4,   null: false
    t.integer  "bonus_code_1",       limit: 4
    t.string   "bonus_operator_1",   limit: 255
    t.float    "bonus_1",            limit: 24,  null: false
    t.integer  "bonus_code_2",       limit: 4
    t.string   "bonus_operator_2",   limit: 255
    t.float    "bonus_2",            limit: 24,  null: false
    t.integer  "bonus_code_3",       limit: 4
    t.string   "bonus_operator_3",   limit: 255
    t.float    "bonus_3",            limit: 24,  null: false
    t.integer  "bonus_code_4",       limit: 4
    t.string   "bonus_operator_4",   limit: 255
    t.float    "bonus_4",            limit: 24,  null: false
    t.integer  "bonus_code_5",       limit: 4
    t.string   "bonus_operator_5",   limit: 255
    t.float    "bonus_5",            limit: 24,  null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_accessories", ["item_id"], name: "index_florensia_item_accessories_on_item_id", unique: true, using: :btree
  add_index "florensia_item_accessories", ["level_land"], name: "index_florensia_item_accessories_on_level_land", using: :btree
  add_index "florensia_item_accessories", ["level_sea"], name: "index_florensia_item_accessories_on_level_sea", using: :btree

  create_table "florensia_item_baits", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.integer  "explosive_radius",   limit: 4,   null: false
    t.integer  "defense",            limit: 4,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_baits", ["item_id"], name: "index_florensia_item_baits_on_item_id", unique: true, using: :btree

  create_table "florensia_item_bullets", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.integer  "explosive_radius",   limit: 4,   null: false
    t.integer  "defense",            limit: 4,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_bullets", ["item_id"], name: "index_florensia_item_bullets_on_item_id", unique: true, using: :btree

  create_table "florensia_item_cloaks", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_cloaks", ["item_id"], name: "index_florensia_item_cloaks_on_item_id", unique: true, using: :btree
  add_index "florensia_item_cloaks", ["level_land"], name: "index_florensia_item_cloaks_on_level_land", using: :btree
  add_index "florensia_item_cloaks", ["level_sea"], name: "index_florensia_item_cloaks_on_level_sea", using: :btree

  create_table "florensia_item_consumes", force: :cascade do |t|
    t.string   "item_id",                limit: 255, null: false
    t.boolean  "female",                 limit: 1
    t.string   "class_land",             limit: 255
    t.integer  "efficiency",             limit: 4,   null: false
    t.string   "description_consume_id", limit: 255, null: false
    t.float    "npc_price",              limit: 24,  null: false
    t.float    "npc_price_disposal",     limit: 24,  null: false
    t.boolean  "tradable",               limit: 1,   null: false
    t.boolean  "exchangeable",           limit: 1,   null: false
    t.boolean  "shopable",               limit: 1,   null: false
    t.boolean  "questitem",              limit: 1,   null: false
    t.integer  "duration",               limit: 4
    t.string   "image_icon_id",          limit: 255
    t.string   "image_character_id",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_consumes", ["item_id"], name: "index_florensia_item_consumes_on_item_id", unique: true, using: :btree

  create_table "florensia_item_crew_potions", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.boolean  "female",             limit: 1
    t.string   "class_land",         limit: 255
    t.integer  "efficiency",         limit: 4,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_crew_potions", ["item_id"], name: "index_florensia_item_crew_potions_on_item_id", unique: true, using: :btree

  create_table "florensia_item_fish_materials", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_fish_materials", ["item_id"], name: "index_florensia_item_fish_materials_on_item_id", unique: true, using: :btree

  create_table "florensia_item_fishings", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_fishings", ["item_id"], name: "index_florensia_item_fishings_on_item_id", unique: true, using: :btree
  add_index "florensia_item_fishings", ["level_land"], name: "index_florensia_item_fishings_on_level_land", using: :btree
  add_index "florensia_item_fishings", ["level_sea"], name: "index_florensia_item_fishings_on_level_sea", using: :btree

  create_table "florensia_item_free_markets", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.string   "description_id",     limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_free_markets", ["item_id"], name: "index_florensia_item_free_markets_on_item_id", unique: true, using: :btree

  create_table "florensia_item_fusion_help_breaks", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_fusion_help_breaks", ["item_id"], name: "index_florensia_item_fusion_help_breaks_on_item_id", unique: true, using: :btree

  create_table "florensia_item_gauntlets", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_gauntlets", ["item_id"], name: "index_florensia_item_gauntlets_on_item_id", unique: true, using: :btree
  add_index "florensia_item_gauntlets", ["level_land"], name: "index_florensia_item_gauntlets_on_level_land", using: :btree
  add_index "florensia_item_gauntlets", ["level_sea"], name: "index_florensia_item_gauntlets_on_level_sea", using: :btree

  create_table "florensia_item_guns", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_guns", ["item_id"], name: "index_florensia_item_guns_on_item_id", unique: true, using: :btree
  add_index "florensia_item_guns", ["level_land"], name: "index_florensia_item_guns_on_level_land", using: :btree
  add_index "florensia_item_guns", ["level_sea"], name: "index_florensia_item_guns_on_level_sea", using: :btree

  create_table "florensia_item_hats", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_hats", ["item_id"], name: "index_florensia_item_hats_on_item_id", unique: true, using: :btree
  add_index "florensia_item_hats", ["level_land"], name: "index_florensia_item_hats_on_level_land", using: :btree
  add_index "florensia_item_hats", ["level_sea"], name: "index_florensia_item_hats_on_level_sea", using: :btree

  create_table "florensia_item_indices", force: :cascade do |t|
    t.string  "item_id",       limit: 255, null: false
    t.integer "metadata_id",   limit: 4
    t.string  "metadata_type", limit: 255
  end

  add_index "florensia_item_indices", ["item_id"], name: "index_florensia_item_indices_on_item_id", unique: true, using: :btree
  add_index "florensia_item_indices", ["metadata_type"], name: "index_florensia_item_indices_on_metadata_type", using: :btree

  create_table "florensia_item_knives", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_knives", ["item_id"], name: "index_florensia_item_knives_on_item_id", unique: true, using: :btree
  add_index "florensia_item_knives", ["level_land"], name: "index_florensia_item_knives_on_level_land", using: :btree
  add_index "florensia_item_knives", ["level_sea"], name: "index_florensia_item_knives_on_level_sea", using: :btree

  create_table "florensia_item_lowers", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_lowers", ["item_id"], name: "index_florensia_item_lowers_on_item_id", unique: true, using: :btree
  add_index "florensia_item_lowers", ["level_land"], name: "index_florensia_item_lowers_on_level_land", using: :btree
  add_index "florensia_item_lowers", ["level_sea"], name: "index_florensia_item_lowers_on_level_sea", using: :btree

  create_table "florensia_item_magic_balls", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_magic_balls", ["item_id"], name: "index_florensia_item_magic_balls_on_item_id", unique: true, using: :btree
  add_index "florensia_item_magic_balls", ["level_land"], name: "index_florensia_item_magic_balls_on_level_land", using: :btree
  add_index "florensia_item_magic_balls", ["level_sea"], name: "index_florensia_item_magic_balls_on_level_sea", using: :btree

  create_table "florensia_item_materials", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_materials", ["item_id"], name: "index_florensia_item_materials_on_item_id", unique: true, using: :btree

  create_table "florensia_item_ornaments", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.boolean  "female",             limit: 1
    t.string   "class_land",         limit: 255
    t.integer  "level_land",         limit: 4,   null: false
    t.integer  "level_sea",          limit: 4,   null: false
    t.integer  "ability_str",        limit: 4,   null: false
    t.integer  "ability_dex",        limit: 4,   null: false
    t.integer  "ability_con",        limit: 4,   null: false
    t.integer  "ability_int",        limit: 4,   null: false
    t.integer  "ability_wis",        limit: 4,   null: false
    t.integer  "ability_vol",        limit: 4,   null: false
    t.integer  "rare_grade",         limit: 4,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.boolean  "gm_only",            limit: 1,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.integer  "magic_defense",      limit: 4,   null: false
    t.integer  "bonus_code_1",       limit: 4
    t.string   "bonus_operator_1",   limit: 255
    t.float    "bonus_1",            limit: 24,  null: false
    t.integer  "bonus_code_2",       limit: 4
    t.string   "bonus_operator_2",   limit: 255
    t.float    "bonus_2",            limit: 24,  null: false
    t.integer  "bonus_code_3",       limit: 4
    t.string   "bonus_operator_3",   limit: 255
    t.float    "bonus_3",            limit: 24,  null: false
    t.integer  "bonus_code_4",       limit: 4
    t.string   "bonus_operator_4",   limit: 255
    t.float    "bonus_4",            limit: 24,  null: false
    t.integer  "bonus_code_5",       limit: 4
    t.string   "bonus_operator_5",   limit: 255
    t.float    "bonus_5",            limit: 24,  null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ornaments", ["item_id"], name: "index_florensia_item_ornaments_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ornaments", ["level_land"], name: "index_florensia_item_ornaments_on_level_land", using: :btree
  add_index "florensia_item_ornaments", ["level_sea"], name: "index_florensia_item_ornaments_on_level_sea", using: :btree

  create_table "florensia_item_pet_combine_helps", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_pet_combine_helps", ["item_id"], name: "index_florensia_item_pet_combine_helps_on_item_id", unique: true, using: :btree

  create_table "florensia_item_pet_combines", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_pet_combines", ["item_id"], name: "index_florensia_item_pet_combines_on_item_id", unique: true, using: :btree

  create_table "florensia_item_pet_skill_stones", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.string   "description_id",     limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_pet_skill_stones", ["item_id"], name: "index_florensia_item_pet_skill_stones_on_item_id", unique: true, using: :btree

  create_table "florensia_item_pets", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.boolean  "female",             limit: 1
    t.string   "class_land",         limit: 255
    t.integer  "efficiency",         limit: 4,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_pets", ["item_id"], name: "index_florensia_item_pets_on_item_id", unique: true, using: :btree

  create_table "florensia_item_quest_scrolls", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.string   "description_id",     limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_quest_scrolls", ["item_id"], name: "index_florensia_item_quest_scrolls_on_item_id", unique: true, using: :btree

  create_table "florensia_item_quests", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_quests", ["item_id"], name: "index_florensia_item_quests_on_item_id", unique: true, using: :btree

  create_table "florensia_item_random_box_changes", force: :cascade do |t|
    t.string   "item_id",                       limit: 255, null: false
    t.string   "randombox_item_id_0",           limit: 255
    t.integer  "randombox_item_count_0",        limit: 4,   null: false
    t.integer  "randombox_item_probability_0",  limit: 4,   null: false
    t.string   "randombox_item_id_1",           limit: 255
    t.integer  "randombox_item_count_1",        limit: 4,   null: false
    t.integer  "randombox_item_probability_1",  limit: 4,   null: false
    t.string   "randombox_item_id_2",           limit: 255
    t.integer  "randombox_item_count_2",        limit: 4,   null: false
    t.integer  "randombox_item_probability_2",  limit: 4,   null: false
    t.string   "randombox_item_id_3",           limit: 255
    t.integer  "randombox_item_count_3",        limit: 4,   null: false
    t.integer  "randombox_item_probability_3",  limit: 4,   null: false
    t.string   "randombox_item_id_4",           limit: 255
    t.integer  "randombox_item_count_4",        limit: 4,   null: false
    t.integer  "randombox_item_probability_4",  limit: 4,   null: false
    t.string   "randombox_item_id_5",           limit: 255
    t.integer  "randombox_item_count_5",        limit: 4,   null: false
    t.integer  "randombox_item_probability_5",  limit: 4,   null: false
    t.string   "randombox_item_id_6",           limit: 255
    t.integer  "randombox_item_count_6",        limit: 4,   null: false
    t.integer  "randombox_item_probability_6",  limit: 4,   null: false
    t.string   "randombox_item_id_7",           limit: 255
    t.integer  "randombox_item_count_7",        limit: 4,   null: false
    t.integer  "randombox_item_probability_7",  limit: 4,   null: false
    t.string   "randombox_item_id_8",           limit: 255
    t.integer  "randombox_item_count_8",        limit: 4,   null: false
    t.integer  "randombox_item_probability_8",  limit: 4,   null: false
    t.string   "randombox_item_id_9",           limit: 255
    t.integer  "randombox_item_count_9",        limit: 4,   null: false
    t.integer  "randombox_item_probability_9",  limit: 4,   null: false
    t.string   "randombox_item_id_10",          limit: 255
    t.integer  "randombox_item_count_10",       limit: 4,   null: false
    t.integer  "randombox_item_probability_10", limit: 4,   null: false
    t.string   "randombox_item_id_11",          limit: 255
    t.integer  "randombox_item_count_11",       limit: 4,   null: false
    t.integer  "randombox_item_probability_11", limit: 4,   null: false
    t.string   "randombox_item_id_12",          limit: 255
    t.integer  "randombox_item_count_12",       limit: 4,   null: false
    t.integer  "randombox_item_probability_12", limit: 4,   null: false
    t.string   "randombox_item_id_13",          limit: 255
    t.integer  "randombox_item_count_13",       limit: 4,   null: false
    t.integer  "randombox_item_probability_13", limit: 4,   null: false
    t.string   "randombox_item_id_14",          limit: 255
    t.integer  "randombox_item_count_14",       limit: 4,   null: false
    t.integer  "randombox_item_probability_14", limit: 4,   null: false
    t.string   "randombox_item_id_15",          limit: 255
    t.integer  "randombox_item_count_15",       limit: 4,   null: false
    t.integer  "randombox_item_probability_15", limit: 4,   null: false
    t.string   "randombox_item_id_16",          limit: 255
    t.integer  "randombox_item_count_16",       limit: 4,   null: false
    t.integer  "randombox_item_probability_16", limit: 4,   null: false
    t.string   "randombox_item_id_17",          limit: 255
    t.integer  "randombox_item_count_17",       limit: 4,   null: false
    t.integer  "randombox_item_probability_17", limit: 4,   null: false
    t.string   "randombox_item_id_18",          limit: 255
    t.integer  "randombox_item_count_18",       limit: 4,   null: false
    t.integer  "randombox_item_probability_18", limit: 4,   null: false
    t.string   "randombox_item_id_19",          limit: 255
    t.integer  "randombox_item_count_19",       limit: 4,   null: false
    t.integer  "randombox_item_probability_19", limit: 4,   null: false
    t.string   "randombox_item_id_20",          limit: 255
    t.integer  "randombox_item_count_20",       limit: 4,   null: false
    t.integer  "randombox_item_probability_20", limit: 4,   null: false
    t.string   "randombox_item_id_21",          limit: 255
    t.integer  "randombox_item_count_21",       limit: 4,   null: false
    t.integer  "randombox_item_probability_21", limit: 4,   null: false
    t.string   "randombox_item_id_22",          limit: 255
    t.integer  "randombox_item_count_22",       limit: 4,   null: false
    t.integer  "randombox_item_probability_22", limit: 4,   null: false
    t.string   "randombox_item_id_23",          limit: 255
    t.integer  "randombox_item_count_23",       limit: 4,   null: false
    t.integer  "randombox_item_probability_23", limit: 4,   null: false
    t.string   "randombox_item_id_24",          limit: 255
    t.integer  "randombox_item_count_24",       limit: 4,   null: false
    t.integer  "randombox_item_probability_24", limit: 4,   null: false
    t.string   "randombox_item_id_25",          limit: 255
    t.integer  "randombox_item_count_25",       limit: 4,   null: false
    t.integer  "randombox_item_probability_25", limit: 4,   null: false
    t.string   "randombox_item_id_26",          limit: 255
    t.integer  "randombox_item_count_26",       limit: 4,   null: false
    t.integer  "randombox_item_probability_26", limit: 4,   null: false
    t.string   "randombox_item_id_27",          limit: 255
    t.integer  "randombox_item_count_27",       limit: 4,   null: false
    t.integer  "randombox_item_probability_27", limit: 4,   null: false
    t.string   "randombox_item_id_28",          limit: 255
    t.integer  "randombox_item_count_28",       limit: 4,   null: false
    t.integer  "randombox_item_probability_28", limit: 4,   null: false
    t.string   "randombox_item_id_29",          limit: 255
    t.integer  "randombox_item_count_29",       limit: 4,   null: false
    t.integer  "randombox_item_probability_29", limit: 4,   null: false
    t.string   "randombox_item_id_30",          limit: 255
    t.integer  "randombox_item_count_30",       limit: 4,   null: false
    t.integer  "randombox_item_probability_30", limit: 4,   null: false
    t.string   "randombox_item_id_31",          limit: 255
    t.integer  "randombox_item_count_31",       limit: 4,   null: false
    t.integer  "randombox_item_probability_31", limit: 4,   null: false
    t.string   "randombox_item_id_32",          limit: 255
    t.integer  "randombox_item_count_32",       limit: 4,   null: false
    t.integer  "randombox_item_probability_32", limit: 4,   null: false
    t.string   "randombox_item_id_33",          limit: 255
    t.integer  "randombox_item_count_33",       limit: 4,   null: false
    t.integer  "randombox_item_probability_33", limit: 4,   null: false
    t.string   "randombox_item_id_34",          limit: 255
    t.integer  "randombox_item_count_34",       limit: 4,   null: false
    t.integer  "randombox_item_probability_34", limit: 4,   null: false
    t.string   "randombox_item_id_35",          limit: 255
    t.integer  "randombox_item_count_35",       limit: 4,   null: false
    t.integer  "randombox_item_probability_35", limit: 4,   null: false
    t.string   "randombox_item_id_36",          limit: 255
    t.integer  "randombox_item_count_36",       limit: 4,   null: false
    t.integer  "randombox_item_probability_36", limit: 4,   null: false
    t.string   "randombox_item_id_37",          limit: 255
    t.integer  "randombox_item_count_37",       limit: 4,   null: false
    t.integer  "randombox_item_probability_37", limit: 4,   null: false
    t.string   "randombox_item_id_38",          limit: 255
    t.integer  "randombox_item_count_38",       limit: 4,   null: false
    t.integer  "randombox_item_probability_38", limit: 4,   null: false
    t.string   "randombox_item_id_39",          limit: 255
    t.integer  "randombox_item_count_39",       limit: 4,   null: false
    t.integer  "randombox_item_probability_39", limit: 4,   null: false
    t.string   "randombox_item_id_40",          limit: 255
    t.integer  "randombox_item_count_40",       limit: 4,   null: false
    t.integer  "randombox_item_probability_40", limit: 4,   null: false
    t.string   "randombox_item_id_41",          limit: 255
    t.integer  "randombox_item_count_41",       limit: 4,   null: false
    t.integer  "randombox_item_probability_41", limit: 4,   null: false
    t.string   "randombox_item_id_42",          limit: 255
    t.integer  "randombox_item_count_42",       limit: 4,   null: false
    t.integer  "randombox_item_probability_42", limit: 4,   null: false
    t.string   "randombox_item_id_43",          limit: 255
    t.integer  "randombox_item_count_43",       limit: 4,   null: false
    t.integer  "randombox_item_probability_43", limit: 4,   null: false
    t.string   "randombox_item_id_44",          limit: 255
    t.integer  "randombox_item_count_44",       limit: 4,   null: false
    t.integer  "randombox_item_probability_44", limit: 4,   null: false
    t.string   "randombox_item_id_45",          limit: 255
    t.integer  "randombox_item_count_45",       limit: 4,   null: false
    t.integer  "randombox_item_probability_45", limit: 4,   null: false
    t.string   "randombox_item_id_46",          limit: 255
    t.integer  "randombox_item_count_46",       limit: 4,   null: false
    t.integer  "randombox_item_probability_46", limit: 4,   null: false
    t.string   "randombox_item_id_47",          limit: 255
    t.integer  "randombox_item_count_47",       limit: 4,   null: false
    t.integer  "randombox_item_probability_47", limit: 4,   null: false
    t.string   "randombox_item_id_48",          limit: 255
    t.integer  "randombox_item_count_48",       limit: 4,   null: false
    t.integer  "randombox_item_probability_48", limit: 4,   null: false
    t.string   "randombox_item_id_49",          limit: 255
    t.integer  "randombox_item_count_49",       limit: 4,   null: false
    t.integer  "randombox_item_probability_49", limit: 4,   null: false
    t.string   "randombox_item_id_50",          limit: 255
    t.integer  "randombox_item_count_50",       limit: 4,   null: false
    t.integer  "randombox_item_probability_50", limit: 4,   null: false
    t.string   "image_icon_id",                 limit: 255
    t.string   "image_character_id",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_random_box_changes", ["item_id"], name: "index_florensia_item_random_box_changes_on_item_id", unique: true, using: :btree

  create_table "florensia_item_random_boxes", force: :cascade do |t|
    t.string   "item_id",                       limit: 255, null: false
    t.integer  "level_land",                    limit: 4,   null: false
    t.integer  "level_sea",                     limit: 4,   null: false
    t.string   "randombox_item_id_0",           limit: 255
    t.integer  "randombox_item_count_0",        limit: 4,   null: false
    t.integer  "randombox_item_probability_0",  limit: 4,   null: false
    t.string   "randombox_item_id_1",           limit: 255
    t.integer  "randombox_item_count_1",        limit: 4,   null: false
    t.integer  "randombox_item_probability_1",  limit: 4,   null: false
    t.string   "randombox_item_id_2",           limit: 255
    t.integer  "randombox_item_count_2",        limit: 4,   null: false
    t.integer  "randombox_item_probability_2",  limit: 4,   null: false
    t.string   "randombox_item_id_3",           limit: 255
    t.integer  "randombox_item_count_3",        limit: 4,   null: false
    t.integer  "randombox_item_probability_3",  limit: 4,   null: false
    t.string   "randombox_item_id_4",           limit: 255
    t.integer  "randombox_item_count_4",        limit: 4,   null: false
    t.integer  "randombox_item_probability_4",  limit: 4,   null: false
    t.string   "randombox_item_id_5",           limit: 255
    t.integer  "randombox_item_count_5",        limit: 4,   null: false
    t.integer  "randombox_item_probability_5",  limit: 4,   null: false
    t.string   "randombox_item_id_6",           limit: 255
    t.integer  "randombox_item_count_6",        limit: 4,   null: false
    t.integer  "randombox_item_probability_6",  limit: 4,   null: false
    t.string   "randombox_item_id_7",           limit: 255
    t.integer  "randombox_item_count_7",        limit: 4,   null: false
    t.integer  "randombox_item_probability_7",  limit: 4,   null: false
    t.string   "randombox_item_id_8",           limit: 255
    t.integer  "randombox_item_count_8",        limit: 4,   null: false
    t.integer  "randombox_item_probability_8",  limit: 4,   null: false
    t.string   "randombox_item_id_9",           limit: 255
    t.integer  "randombox_item_count_9",        limit: 4,   null: false
    t.integer  "randombox_item_probability_9",  limit: 4,   null: false
    t.string   "randombox_item_id_10",          limit: 255
    t.integer  "randombox_item_count_10",       limit: 4,   null: false
    t.integer  "randombox_item_probability_10", limit: 4,   null: false
    t.string   "randombox_item_id_11",          limit: 255
    t.integer  "randombox_item_count_11",       limit: 4,   null: false
    t.integer  "randombox_item_probability_11", limit: 4,   null: false
    t.string   "randombox_item_id_12",          limit: 255
    t.integer  "randombox_item_count_12",       limit: 4,   null: false
    t.integer  "randombox_item_probability_12", limit: 4,   null: false
    t.string   "randombox_item_id_13",          limit: 255
    t.integer  "randombox_item_count_13",       limit: 4,   null: false
    t.integer  "randombox_item_probability_13", limit: 4,   null: false
    t.string   "randombox_item_id_14",          limit: 255
    t.integer  "randombox_item_count_14",       limit: 4,   null: false
    t.integer  "randombox_item_probability_14", limit: 4,   null: false
    t.string   "randombox_item_id_15",          limit: 255
    t.integer  "randombox_item_count_15",       limit: 4,   null: false
    t.integer  "randombox_item_probability_15", limit: 4,   null: false
    t.string   "randombox_item_id_16",          limit: 255
    t.integer  "randombox_item_count_16",       limit: 4,   null: false
    t.integer  "randombox_item_probability_16", limit: 4,   null: false
    t.string   "randombox_item_id_17",          limit: 255
    t.integer  "randombox_item_count_17",       limit: 4,   null: false
    t.integer  "randombox_item_probability_17", limit: 4,   null: false
    t.string   "randombox_item_id_18",          limit: 255
    t.integer  "randombox_item_count_18",       limit: 4,   null: false
    t.integer  "randombox_item_probability_18", limit: 4,   null: false
    t.string   "randombox_item_id_19",          limit: 255
    t.integer  "randombox_item_count_19",       limit: 4,   null: false
    t.integer  "randombox_item_probability_19", limit: 4,   null: false
    t.string   "randombox_item_id_20",          limit: 255
    t.integer  "randombox_item_count_20",       limit: 4,   null: false
    t.integer  "randombox_item_probability_20", limit: 4,   null: false
    t.string   "randombox_item_id_21",          limit: 255
    t.integer  "randombox_item_count_21",       limit: 4,   null: false
    t.integer  "randombox_item_probability_21", limit: 4,   null: false
    t.string   "randombox_item_id_22",          limit: 255
    t.integer  "randombox_item_count_22",       limit: 4,   null: false
    t.integer  "randombox_item_probability_22", limit: 4,   null: false
    t.string   "randombox_item_id_23",          limit: 255
    t.integer  "randombox_item_count_23",       limit: 4,   null: false
    t.integer  "randombox_item_probability_23", limit: 4,   null: false
    t.string   "randombox_item_id_24",          limit: 255
    t.integer  "randombox_item_count_24",       limit: 4,   null: false
    t.integer  "randombox_item_probability_24", limit: 4,   null: false
    t.string   "randombox_item_id_25",          limit: 255
    t.integer  "randombox_item_count_25",       limit: 4,   null: false
    t.integer  "randombox_item_probability_25", limit: 4,   null: false
    t.string   "randombox_item_id_26",          limit: 255
    t.integer  "randombox_item_count_26",       limit: 4,   null: false
    t.integer  "randombox_item_probability_26", limit: 4,   null: false
    t.string   "randombox_item_id_27",          limit: 255
    t.integer  "randombox_item_count_27",       limit: 4,   null: false
    t.integer  "randombox_item_probability_27", limit: 4,   null: false
    t.string   "randombox_item_id_28",          limit: 255
    t.integer  "randombox_item_count_28",       limit: 4,   null: false
    t.integer  "randombox_item_probability_28", limit: 4,   null: false
    t.string   "randombox_item_id_29",          limit: 255
    t.integer  "randombox_item_count_29",       limit: 4,   null: false
    t.integer  "randombox_item_probability_29", limit: 4,   null: false
    t.string   "randombox_item_id_30",          limit: 255
    t.integer  "randombox_item_count_30",       limit: 4,   null: false
    t.integer  "randombox_item_probability_30", limit: 4,   null: false
    t.string   "randombox_item_id_31",          limit: 255
    t.integer  "randombox_item_count_31",       limit: 4,   null: false
    t.integer  "randombox_item_probability_31", limit: 4,   null: false
    t.string   "randombox_item_id_32",          limit: 255
    t.integer  "randombox_item_count_32",       limit: 4,   null: false
    t.integer  "randombox_item_probability_32", limit: 4,   null: false
    t.string   "randombox_item_id_33",          limit: 255
    t.integer  "randombox_item_count_33",       limit: 4,   null: false
    t.integer  "randombox_item_probability_33", limit: 4,   null: false
    t.string   "randombox_item_id_34",          limit: 255
    t.integer  "randombox_item_count_34",       limit: 4,   null: false
    t.integer  "randombox_item_probability_34", limit: 4,   null: false
    t.string   "randombox_item_id_35",          limit: 255
    t.integer  "randombox_item_count_35",       limit: 4,   null: false
    t.integer  "randombox_item_probability_35", limit: 4,   null: false
    t.string   "randombox_item_id_36",          limit: 255
    t.integer  "randombox_item_count_36",       limit: 4,   null: false
    t.integer  "randombox_item_probability_36", limit: 4,   null: false
    t.string   "randombox_item_id_37",          limit: 255
    t.integer  "randombox_item_count_37",       limit: 4,   null: false
    t.integer  "randombox_item_probability_37", limit: 4,   null: false
    t.string   "randombox_item_id_38",          limit: 255
    t.integer  "randombox_item_count_38",       limit: 4,   null: false
    t.integer  "randombox_item_probability_38", limit: 4,   null: false
    t.string   "randombox_item_id_39",          limit: 255
    t.integer  "randombox_item_count_39",       limit: 4,   null: false
    t.integer  "randombox_item_probability_39", limit: 4,   null: false
    t.string   "randombox_item_id_40",          limit: 255
    t.integer  "randombox_item_count_40",       limit: 4,   null: false
    t.integer  "randombox_item_probability_40", limit: 4,   null: false
    t.string   "randombox_item_id_41",          limit: 255
    t.integer  "randombox_item_count_41",       limit: 4,   null: false
    t.integer  "randombox_item_probability_41", limit: 4,   null: false
    t.string   "randombox_item_id_42",          limit: 255
    t.integer  "randombox_item_count_42",       limit: 4,   null: false
    t.integer  "randombox_item_probability_42", limit: 4,   null: false
    t.string   "randombox_item_id_43",          limit: 255
    t.integer  "randombox_item_count_43",       limit: 4,   null: false
    t.integer  "randombox_item_probability_43", limit: 4,   null: false
    t.string   "randombox_item_id_44",          limit: 255
    t.integer  "randombox_item_count_44",       limit: 4,   null: false
    t.integer  "randombox_item_probability_44", limit: 4,   null: false
    t.string   "randombox_item_id_45",          limit: 255
    t.integer  "randombox_item_count_45",       limit: 4,   null: false
    t.integer  "randombox_item_probability_45", limit: 4,   null: false
    t.string   "randombox_item_id_46",          limit: 255
    t.integer  "randombox_item_count_46",       limit: 4,   null: false
    t.integer  "randombox_item_probability_46", limit: 4,   null: false
    t.string   "randombox_item_id_47",          limit: 255
    t.integer  "randombox_item_count_47",       limit: 4,   null: false
    t.integer  "randombox_item_probability_47", limit: 4,   null: false
    t.string   "randombox_item_id_48",          limit: 255
    t.integer  "randombox_item_count_48",       limit: 4,   null: false
    t.integer  "randombox_item_probability_48", limit: 4,   null: false
    t.string   "randombox_item_id_49",          limit: 255
    t.integer  "randombox_item_count_49",       limit: 4,   null: false
    t.integer  "randombox_item_probability_49", limit: 4,   null: false
    t.string   "randombox_item_id_50",          limit: 255
    t.integer  "randombox_item_count_50",       limit: 4,   null: false
    t.integer  "randombox_item_probability_50", limit: 4,   null: false
    t.string   "randombox_item_id_51",          limit: 255
    t.integer  "randombox_item_count_51",       limit: 4,   null: false
    t.integer  "randombox_item_probability_51", limit: 4,   null: false
    t.string   "randombox_item_id_52",          limit: 255
    t.integer  "randombox_item_count_52",       limit: 4,   null: false
    t.integer  "randombox_item_probability_52", limit: 4,   null: false
    t.string   "randombox_item_id_53",          limit: 255
    t.integer  "randombox_item_count_53",       limit: 4,   null: false
    t.integer  "randombox_item_probability_53", limit: 4,   null: false
    t.string   "randombox_item_id_54",          limit: 255
    t.integer  "randombox_item_count_54",       limit: 4,   null: false
    t.integer  "randombox_item_probability_54", limit: 4,   null: false
    t.string   "randombox_item_id_55",          limit: 255
    t.integer  "randombox_item_count_55",       limit: 4,   null: false
    t.integer  "randombox_item_probability_55", limit: 4,   null: false
    t.string   "randombox_item_id_56",          limit: 255
    t.integer  "randombox_item_count_56",       limit: 4,   null: false
    t.integer  "randombox_item_probability_56", limit: 4,   null: false
    t.string   "randombox_item_id_57",          limit: 255
    t.integer  "randombox_item_count_57",       limit: 4,   null: false
    t.integer  "randombox_item_probability_57", limit: 4,   null: false
    t.string   "randombox_item_id_58",          limit: 255
    t.integer  "randombox_item_count_58",       limit: 4,   null: false
    t.integer  "randombox_item_probability_58", limit: 4,   null: false
    t.string   "randombox_item_id_59",          limit: 255
    t.integer  "randombox_item_count_59",       limit: 4,   null: false
    t.integer  "randombox_item_probability_59", limit: 4,   null: false
    t.string   "randombox_item_id_60",          limit: 255
    t.integer  "randombox_item_count_60",       limit: 4,   null: false
    t.integer  "randombox_item_probability_60", limit: 4,   null: false
    t.float    "npc_price",                     limit: 24,  null: false
    t.float    "npc_price_disposal",            limit: 24,  null: false
    t.boolean  "tradable",                      limit: 1,   null: false
    t.boolean  "exchangeable",                  limit: 1,   null: false
    t.boolean  "shopable",                      limit: 1,   null: false
    t.boolean  "questitem",                     limit: 1,   null: false
    t.integer  "rare_grade",                    limit: 4,   null: false
    t.string   "image_icon_id",                 limit: 255
    t.string   "image_character_id",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_random_boxes", ["item_id"], name: "index_florensia_item_random_boxes_on_item_id", unique: true, using: :btree
  add_index "florensia_item_random_boxes", ["level_land"], name: "index_florensia_item_random_boxes_on_level_land", using: :btree
  add_index "florensia_item_random_boxes", ["level_sea"], name: "index_florensia_item_random_boxes_on_level_sea", using: :btree

  create_table "florensia_item_recipes", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.string   "recipe_target_id",     limit: 255, null: false
    t.string   "recipe_material_1",    limit: 255
    t.integer  "recipe_requirement_1", limit: 4,   null: false
    t.string   "recipe_material_2",    limit: 255
    t.integer  "recipe_requirement_2", limit: 4,   null: false
    t.string   "recipe_material_3",    limit: 255
    t.integer  "recipe_requirement_3", limit: 4,   null: false
    t.string   "recipe_material_4",    limit: 255
    t.integer  "recipe_requirement_4", limit: 4,   null: false
    t.string   "recipe_material_5",    limit: 255
    t.integer  "recipe_requirement_5", limit: 4,   null: false
    t.string   "recipe_material_6",    limit: 255
    t.integer  "recipe_requirement_6", limit: 4,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_recipes", ["item_id"], name: "index_florensia_item_recipes_on_item_id", unique: true, using: :btree

  create_table "florensia_item_return_stones", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.boolean  "female",             limit: 1
    t.string   "class_land",         limit: 255
    t.integer  "efficiency",         limit: 4,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_return_stones", ["item_id"], name: "index_florensia_item_return_stones_on_item_id", unique: true, using: :btree

  create_table "florensia_item_riding_pets", force: :cascade do |t|
    t.string   "item_id",                limit: 255, null: false
    t.boolean  "female",                 limit: 1
    t.string   "class_land",             limit: 255
    t.integer  "efficiency",             limit: 4,   null: false
    t.string   "description_consume_id", limit: 255, null: false
    t.float    "npc_price",              limit: 24,  null: false
    t.float    "npc_price_disposal",     limit: 24,  null: false
    t.boolean  "tradable",               limit: 1,   null: false
    t.boolean  "exchangeable",           limit: 1,   null: false
    t.boolean  "shopable",               limit: 1,   null: false
    t.boolean  "questitem",              limit: 1,   null: false
    t.integer  "duration",               limit: 4
    t.string   "image_icon_id",          limit: 255
    t.string   "image_character_id",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_riding_pets", ["item_id"], name: "index_florensia_item_riding_pets_on_item_id", unique: true, using: :btree

  create_table "florensia_item_seal_help_breaks", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_seal_help_breaks", ["item_id"], name: "index_florensia_item_seal_help_breaks_on_item_id", unique: true, using: :btree

  create_table "florensia_item_shells", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.integer  "explosive_radius",   limit: 4,   null: false
    t.integer  "defense",            limit: 4,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_shells", ["item_id"], name: "index_florensia_item_shells_on_item_id", unique: true, using: :btree

  create_table "florensia_item_shields", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_shields", ["item_id"], name: "index_florensia_item_shields_on_item_id", unique: true, using: :btree
  add_index "florensia_item_shields", ["level_land"], name: "index_florensia_item_shields_on_level_land", using: :btree
  add_index "florensia_item_shields", ["level_sea"], name: "index_florensia_item_shields_on_level_sea", using: :btree

  create_table "florensia_item_ship_anchors", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_anchors", ["item_id"], name: "index_florensia_item_ship_anchors_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_anchors", ["level_land"], name: "index_florensia_item_ship_anchors_on_level_land", using: :btree
  add_index "florensia_item_ship_anchors", ["level_sea"], name: "index_florensia_item_ship_anchors_on_level_sea", using: :btree

  create_table "florensia_item_ship_bodies", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_bodies", ["item_id"], name: "index_florensia_item_ship_bodies_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_bodies", ["level_land"], name: "index_florensia_item_ship_bodies_on_level_land", using: :btree
  add_index "florensia_item_ship_bodies", ["level_sea"], name: "index_florensia_item_ship_bodies_on_level_sea", using: :btree

  create_table "florensia_item_ship_c_weapons", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_c_weapons", ["item_id"], name: "index_florensia_item_ship_c_weapons_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_c_weapons", ["level_land"], name: "index_florensia_item_ship_c_weapons_on_level_land", using: :btree
  add_index "florensia_item_ship_c_weapons", ["level_sea"], name: "index_florensia_item_ship_c_weapons_on_level_sea", using: :btree

  create_table "florensia_item_ship_figures", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_figures", ["item_id"], name: "index_florensia_item_ship_figures_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_figures", ["level_land"], name: "index_florensia_item_ship_figures_on_level_land", using: :btree
  add_index "florensia_item_ship_figures", ["level_sea"], name: "index_florensia_item_ship_figures_on_level_sea", using: :btree

  create_table "florensia_item_ship_flags", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_flags", ["item_id"], name: "index_florensia_item_ship_flags_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_flags", ["level_land"], name: "index_florensia_item_ship_flags_on_level_land", using: :btree
  add_index "florensia_item_ship_flags", ["level_sea"], name: "index_florensia_item_ship_flags_on_level_sea", using: :btree

  create_table "florensia_item_ship_fronts", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_fronts", ["item_id"], name: "index_florensia_item_ship_fronts_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_fronts", ["level_land"], name: "index_florensia_item_ship_fronts_on_level_land", using: :btree
  add_index "florensia_item_ship_fronts", ["level_sea"], name: "index_florensia_item_ship_fronts_on_level_sea", using: :btree

  create_table "florensia_item_ship_head_masts", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_head_masts", ["item_id"], name: "index_florensia_item_ship_head_masts_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_head_masts", ["level_land"], name: "index_florensia_item_ship_head_masts_on_level_land", using: :btree
  add_index "florensia_item_ship_head_masts", ["level_sea"], name: "index_florensia_item_ship_head_masts_on_level_sea", using: :btree

  create_table "florensia_item_ship_magic_stones", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_magic_stones", ["item_id"], name: "index_florensia_item_ship_magic_stones_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_magic_stones", ["level_land"], name: "index_florensia_item_ship_magic_stones_on_level_land", using: :btree
  add_index "florensia_item_ship_magic_stones", ["level_sea"], name: "index_florensia_item_ship_magic_stones_on_level_sea", using: :btree

  create_table "florensia_item_ship_mainmasts", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_mainmasts", ["item_id"], name: "index_florensia_item_ship_mainmasts_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_mainmasts", ["level_land"], name: "index_florensia_item_ship_mainmasts_on_level_land", using: :btree
  add_index "florensia_item_ship_mainmasts", ["level_sea"], name: "index_florensia_item_ship_mainmasts_on_level_sea", using: :btree

  create_table "florensia_item_ship_n_weapons", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_n_weapons", ["item_id"], name: "index_florensia_item_ship_n_weapons_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_n_weapons", ["level_land"], name: "index_florensia_item_ship_n_weapons_on_level_land", using: :btree
  add_index "florensia_item_ship_n_weapons", ["level_sea"], name: "index_florensia_item_ship_n_weapons_on_level_sea", using: :btree

  create_table "florensia_item_ship_rears", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_rears", ["item_id"], name: "index_florensia_item_ship_rears_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_rears", ["level_land"], name: "index_florensia_item_ship_rears_on_level_land", using: :btree
  add_index "florensia_item_ship_rears", ["level_sea"], name: "index_florensia_item_ship_rears_on_level_sea", using: :btree

  create_table "florensia_item_ship_tail_masts", force: :cascade do |t|
    t.string   "item_id",             limit: 255, null: false
    t.string   "class_sea",           limit: 255
    t.integer  "level_land",          limit: 4,   null: false
    t.integer  "level_sea",           limit: 4,   null: false
    t.integer  "rare_grade",          limit: 4,   null: false
    t.string   "itemtype",            limit: 255, null: false
    t.integer  "ship_defense",        limit: 4,   null: false
    t.integer  "ship_range",          limit: 4,   null: false
    t.integer  "critical",            limit: 4,   null: false
    t.integer  "ship_reloadspeed",    limit: 4,   null: false
    t.integer  "ship_guns_front",     limit: 4,   null: false
    t.integer  "ship_guns_side",      limit: 4,   null: false
    t.integer  "ship_guns_speed",     limit: 4,   null: false
    t.integer  "ship_hitrange",       limit: 4,   null: false
    t.integer  "physical_defense",    limit: 4,   null: false
    t.integer  "protection",          limit: 4,   null: false
    t.integer  "ability_hp",          limit: 4,   null: false
    t.integer  "ship_wind_favorable", limit: 4,   null: false
    t.integer  "ship_wind_adverse",   limit: 4,   null: false
    t.integer  "ship_acceleration",   limit: 4,   null: false
    t.integer  "ship_deceleration",   limit: 4,   null: false
    t.integer  "ship_turnpower",      limit: 4,   null: false
    t.integer  "ability_en",          limit: 4,   null: false
    t.integer  "ability_en_recovery", limit: 4,   null: false
    t.integer  "ability_en_usage",    limit: 4,   null: false
    t.integer  "balance",             limit: 4,   null: false
    t.float    "npc_price_disposal",  limit: 24,  null: false
    t.float    "npc_price_tuning",    limit: 24,  null: false
    t.integer  "bonus_code_1",        limit: 4
    t.float    "bonus_1",             limit: 24,  null: false
    t.integer  "bonus_code_2",        limit: 4
    t.float    "bonus_2",             limit: 24,  null: false
    t.integer  "bonus_code_3",        limit: 4
    t.float    "bonus_3",             limit: 24,  null: false
    t.integer  "bonus_code_4",        limit: 4
    t.float    "bonus_4",             limit: 24,  null: false
    t.integer  "bonus_code_5",        limit: 4
    t.float    "bonus_5",             limit: 24,  null: false
    t.boolean  "tradable",            limit: 1,   null: false
    t.boolean  "exchangeable",        limit: 1,   null: false
    t.boolean  "shopable",            limit: 1,   null: false
    t.boolean  "questitem",           limit: 1,   null: false
    t.integer  "duration",            limit: 4
    t.string   "image_icon_id",       limit: 255
    t.string   "image_character_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_ship_tail_masts", ["item_id"], name: "index_florensia_item_ship_tail_masts_on_item_id", unique: true, using: :btree
  add_index "florensia_item_ship_tail_masts", ["level_land"], name: "index_florensia_item_ship_tail_masts_on_level_land", using: :btree
  add_index "florensia_item_ship_tail_masts", ["level_sea"], name: "index_florensia_item_ship_tail_masts_on_level_sea", using: :btree

  create_table "florensia_item_shoes", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_shoes", ["item_id"], name: "index_florensia_item_shoes_on_item_id", unique: true, using: :btree
  add_index "florensia_item_shoes", ["level_land"], name: "index_florensia_item_shoes_on_level_land", using: :btree
  add_index "florensia_item_shoes", ["level_sea"], name: "index_florensia_item_shoes_on_level_sea", using: :btree

  create_table "florensia_item_skill_books", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.string   "description_id",     limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_skill_books", ["item_id"], name: "index_florensia_item_skill_books_on_item_id", unique: true, using: :btree

  create_table "florensia_item_std_materials", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_std_materials", ["item_id"], name: "index_florensia_item_std_materials_on_item_id", unique: true, using: :btree

  create_table "florensia_item_trade_materials", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_trade_materials", ["item_id"], name: "index_florensia_item_trade_materials_on_item_id", unique: true, using: :btree

  create_table "florensia_item_upgrade_helps", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_upgrade_helps", ["item_id"], name: "index_florensia_item_upgrade_helps_on_item_id", unique: true, using: :btree

  create_table "florensia_item_upgrade_materials", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_upgrade_materials", ["item_id"], name: "index_florensia_item_upgrade_materials_on_item_id", unique: true, using: :btree

  create_table "florensia_item_upgrade_musts", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_upgrade_musts", ["item_id"], name: "index_florensia_item_upgrade_musts_on_item_id", unique: true, using: :btree

  create_table "florensia_item_upgrade_stones", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.boolean  "shopable",           limit: 1,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.integer  "duration",           limit: 4
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_upgrade_stones", ["item_id"], name: "index_florensia_item_upgrade_stones_on_item_id", unique: true, using: :btree

  create_table "florensia_item_uppers", force: :cascade do |t|
    t.string   "item_id",              limit: 255, null: false
    t.boolean  "female",               limit: 1
    t.string   "class_land",           limit: 255
    t.integer  "level_land",           limit: 4,   null: false
    t.integer  "level_sea",            limit: 4,   null: false
    t.integer  "ability_str",          limit: 4,   null: false
    t.integer  "ability_dex",          limit: 4,   null: false
    t.integer  "ability_con",          limit: 4,   null: false
    t.integer  "ability_int",          limit: 4,   null: false
    t.integer  "ability_wis",          limit: 4,   null: false
    t.integer  "ability_vol",          limit: 4,   null: false
    t.integer  "rare_grade",           limit: 4,   null: false
    t.string   "upgrade_rule_id",      limit: 255
    t.string   "itemtype",             limit: 255, null: false
    t.boolean  "two_handed",           limit: 1,   null: false
    t.integer  "physical_defense_min", limit: 4,   null: false
    t.integer  "physical_defense_max", limit: 4,   null: false
    t.integer  "magic_defense_min",    limit: 4,   null: false
    t.integer  "magic_defense_max",    limit: 4,   null: false
    t.integer  "physical_defense",     limit: 4,   null: false
    t.integer  "attack_speed",         limit: 4,   null: false
    t.integer  "range",                limit: 4,   null: false
    t.integer  "magic_defense",        limit: 4,   null: false
    t.integer  "critical",             limit: 4,   null: false
    t.boolean  "questitem",            limit: 1,   null: false
    t.float    "npc_price",            limit: 24,  null: false
    t.float    "npc_price_disposal",   limit: 24,  null: false
    t.integer  "bonus_code_1",         limit: 4
    t.string   "bonus_operator_1",     limit: 255
    t.float    "bonus_1",              limit: 24,  null: false
    t.integer  "bonus_code_2",         limit: 4
    t.string   "bonus_operator_2",     limit: 255
    t.float    "bonus_2",              limit: 24,  null: false
    t.integer  "bonus_code_3",         limit: 4
    t.string   "bonus_operator_3",     limit: 255
    t.float    "bonus_3",              limit: 24,  null: false
    t.integer  "bonus_code_4",         limit: 4
    t.string   "bonus_operator_4",     limit: 255
    t.float    "bonus_4",              limit: 24,  null: false
    t.integer  "bonus_code_5",         limit: 4
    t.string   "bonus_operator_5",     limit: 255
    t.float    "bonus_5",              limit: 24,  null: false
    t.boolean  "tradable",             limit: 1,   null: false
    t.boolean  "exchangeable",         limit: 1,   null: false
    t.boolean  "shopable",             limit: 1,   null: false
    t.integer  "duration",             limit: 4
    t.string   "image_icon_id",        limit: 255
    t.string   "image_character_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_uppers", ["item_id"], name: "index_florensia_item_uppers_on_item_id", unique: true, using: :btree
  add_index "florensia_item_uppers", ["level_land"], name: "index_florensia_item_uppers_on_level_land", using: :btree
  add_index "florensia_item_uppers", ["level_sea"], name: "index_florensia_item_uppers_on_level_sea", using: :btree

  create_table "florensia_item_weapons", force: :cascade do |t|
    t.string   "item_id",            limit: 255, null: false
    t.boolean  "female",             limit: 1
    t.string   "class_land",         limit: 255
    t.integer  "rare_grade",         limit: 4,   null: false
    t.string   "itemtype",           limit: 255, null: false
    t.boolean  "two_handed",         limit: 1,   null: false
    t.integer  "defense",            limit: 4,   null: false
    t.integer  "physical_defense",   limit: 4,   null: false
    t.integer  "attack_speed",       limit: 4,   null: false
    t.integer  "magic_defense",      limit: 4,   null: false
    t.integer  "critical",           limit: 4,   null: false
    t.boolean  "questitem",          limit: 1,   null: false
    t.float    "npc_price",          limit: 24,  null: false
    t.float    "npc_price_disposal", limit: 24,  null: false
    t.boolean  "tradable",           limit: 1,   null: false
    t.boolean  "exchangeable",       limit: 1,   null: false
    t.string   "image_icon_id",      limit: 255
    t.string   "image_character_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_item_weapons", ["item_id"], name: "index_florensia_item_weapons_on_item_id", unique: true, using: :btree

  create_table "florensia_languages", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "quest_language", limit: 255
    t.datetime "created_at"
  end

  create_table "florensia_maps", force: :cascade do |t|
    t.string   "area_code",  limit: 255, default: "", null: false
    t.string   "img_code",   limit: 255, default: "", null: false
    t.integer  "map_id",     limit: 4
    t.string   "ltwh",       limit: 255, default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_maps", ["area_code"], name: "index_florensia_maps_on_area_code", using: :btree
  add_index "florensia_maps", ["map_id"], name: "index_florensia_maps_on_map_id", using: :btree

  create_table "florensia_npcs", force: :cascade do |t|
    t.string   "npc_id",                   limit: 255,                 null: false
    t.string   "image_id",                 limit: 255
    t.integer  "npc_type",                 limit: 4,                   null: false
    t.boolean  "inanimated",               limit: 1,   default: false, null: false
    t.boolean  "air",                      limit: 1,   default: false, null: false
    t.integer  "level",                    limit: 4,                   null: false
    t.integer  "exp_points",               limit: 4,                   null: false
    t.integer  "mana_points",              limit: 4,                   null: false
    t.integer  "body_width",               limit: 4,                   null: false
    t.integer  "body_height",              limit: 4,                   null: false
    t.integer  "heal_points",              limit: 4,                   null: false
    t.integer  "attack_rate_min",          limit: 4,                   null: false
    t.integer  "attack_rate_max",          limit: 4,                   null: false
    t.integer  "magic_defense_min",        limit: 4,                   null: false
    t.integer  "magic_defense_max",        limit: 4,                   null: false
    t.integer  "physical_defense",         limit: 4,                   null: false
    t.integer  "magic_defense",            limit: 4,                   null: false
    t.integer  "required_hitrate",         limit: 4,                   null: false
    t.integer  "naval_guns_count",         limit: 4,                   null: false
    t.integer  "naval_guns_speed",         limit: 4,                   null: false
    t.integer  "naval_guns_scope",         limit: 4,                   null: false
    t.integer  "ship_turnpower",           limit: 4,                   null: false
    t.integer  "attack_cooldown_1",        limit: 4,                   null: false
    t.integer  "attack_cooldown_2",        limit: 4,                   null: false
    t.integer  "attack_cooldown_3",        limit: 4,                   null: false
    t.integer  "attack_cooldown_4",        limit: 4,                   null: false
    t.boolean  "melee",                    limit: 1,   default: false, null: false
    t.string   "action_id_1",              limit: 255
    t.integer  "action_ratio_1",           limit: 4,                   null: false
    t.string   "action_id_2",              limit: 255
    t.integer  "action_ratio_2",           limit: 4,                   null: false
    t.integer  "attack_element",           limit: 4,                   null: false
    t.integer  "resistance_element",       limit: 4,                   null: false
    t.integer  "attack_illusion",          limit: 4,                   null: false
    t.integer  "resistance_illusion",      limit: 4,                   null: false
    t.integer  "attack_holy",              limit: 4,                   null: false
    t.integer  "resistance_holy",          limit: 4,                   null: false
    t.integer  "attack_dark",              limit: 4,                   null: false
    t.integer  "resistance_dark",          limit: 4,                   null: false
    t.integer  "attack_physical",          limit: 4,                   null: false
    t.integer  "resistance_physical",      limit: 4,                   null: false
    t.integer  "attack_poison",            limit: 4,                   null: false
    t.integer  "resistance_poison",        limit: 4,                   null: false
    t.integer  "attack_fire",              limit: 4,                   null: false
    t.integer  "resistance_fire",          limit: 4,                   null: false
    t.integer  "attack_ice",               limit: 4,                   null: false
    t.integer  "resistance_ice",           limit: 4,                   null: false
    t.integer  "attack_lightning",         limit: 4,                   null: false
    t.integer  "resistance_lightning",     limit: 4,                   null: false
    t.integer  "attack_physical_holy",     limit: 4,                   null: false
    t.integer  "resistance_physical_holy", limit: 4,                   null: false
    t.integer  "attack_absolute",          limit: 4,                   null: false
    t.integer  "resistance_absolute",      limit: 4,                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_npcs", ["action_id_1"], name: "index_florensia_npcs_on_action_id_1", using: :btree
  add_index "florensia_npcs", ["action_id_2"], name: "index_florensia_npcs_on_action_id_2", using: :btree
  add_index "florensia_npcs", ["exp_points"], name: "index_florensia_npcs_on_exp_points", using: :btree
  add_index "florensia_npcs", ["heal_points"], name: "index_florensia_npcs_on_heal_points", using: :btree
  add_index "florensia_npcs", ["level"], name: "index_florensia_npcs_on_level", using: :btree
  add_index "florensia_npcs", ["npc_type"], name: "index_florensia_npcs_on_npc_type", using: :btree

  create_table "florensia_quest_references", force: :cascade do |t|
    t.integer "quest_id",       limit: 4
    t.integer "reference_id",   limit: 4
    t.string  "reference_type", limit: 255
  end

  create_table "florensia_quest_translations", force: :cascade do |t|
    t.integer  "language_id",     limit: 4
    t.string   "quest_id",        limit: 255
    t.string   "title",           limit: 255
    t.string   "mission_1_title", limit: 255
    t.string   "mission_2_title", limit: 255
    t.string   "mission_3_title", limit: 255
    t.text     "description",     limit: 65535
    t.text     "preDlg",          limit: 65535
    t.text     "startDlg",        limit: 65535
    t.text     "runDlg",          limit: 65535
    t.text     "finishDlg",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_quest_translations", ["language_id", "quest_id"], name: "index_florensia_quest_translations_on_language_id_and_quest_id", unique: true, using: :btree

  create_table "florensia_quests", force: :cascade do |t|
    t.string   "quest_id",          limit: 255
    t.string   "source_npc_id",     limit: 255
    t.string   "dest_npc_id",       limit: 255
    t.integer  "map_id",            limit: 4
    t.integer  "level",             limit: 4
    t.string   "previous_quest_id", limit: 255
    t.string   "next_quest_id",     limit: 255
    t.string   "class_land",        limit: 255,   null: false
    t.text     "xml",               limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "florensia_quests", ["dest_npc_id"], name: "index_florensia_quests_on_dest_npc_id", using: :btree
  add_index "florensia_quests", ["level"], name: "index_florensia_quests_on_level", using: :btree
  add_index "florensia_quests", ["next_quest_id"], name: "index_florensia_quests_on_next_quest_id", using: :btree
  add_index "florensia_quests", ["previous_quest_id"], name: "index_florensia_quests_on_previous_quest_id", using: :btree
  add_index "florensia_quests", ["source_npc_id"], name: "index_florensia_quests_on_source_npc_id", using: :btree

  create_table "florensia_store_items", force: :cascade do |t|
    t.integer  "npc_id",     limit: 4
    t.integer  "item_id",    limit: 4
    t.datetime "created_at"
  end

  add_index "florensia_store_items", ["npc_id", "item_id"], name: "index_florensia_store_items_on_npc_id_and_item_id", unique: true, using: :btree

  create_table "florensia_translations", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "korea",      limit: 255
    t.string   "japan",      limit: 255
    t.string   "english",    limit: 255
    t.string   "german",     limit: 255
    t.string   "italian",    limit: 255
    t.string   "spanish",    limit: 255
    t.string   "portuguese", limit: 255
    t.string   "french",     limit: 255
    t.string   "turkish",    limit: 255
    t.string   "china",      limit: 255
    t.string   "taiwan",     limit: 255
    t.string   "indonesia",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255, default: "", null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.string   "time_zone",              limit: 255
    t.string   "legacy_password",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
