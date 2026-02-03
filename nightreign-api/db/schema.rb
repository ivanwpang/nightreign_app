# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_02_03_020220) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "night_lords", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.boolean "dlc", default: false, null: false
    t.string "expedition", null: false
    t.string "name", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_night_lords_on_name", unique: true
  end

  create_table "nightfarers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.boolean "dlc", default: false, null: false
    t.string "name", null: false
    t.boolean "unlockable", default: false, null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_nightfarers_on_name", unique: true
  end

  create_table "rotation_night_lords", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "night_lord_id", null: false
    t.bigint "rotation_id", null: false
    t.datetime "updated_at", null: false
    t.index ["night_lord_id"], name: "index_rotation_night_lords_on_night_lord_id"
    t.index ["rotation_id", "night_lord_id"], name: "index_rotation_night_lords_unique", unique: true
    t.index ["rotation_id"], name: "index_rotation_night_lords_on_rotation_id"
  end

  create_table "rotations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "effective_at", null: false
    t.datetime "updated_at", null: false
    t.index ["effective_at"], name: "index_rotations_on_effective_at", unique: true
  end

  add_foreign_key "rotation_night_lords", "night_lords"
  add_foreign_key "rotation_night_lords", "rotations"
end
