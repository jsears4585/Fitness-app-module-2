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

ActiveRecord::Schema.define(version: 20170621132550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_data", force: :cascade do |t|
    t.string "name"
    t.integer "cph_130"
    t.integer "cph_155"
    t.integer "cph_180"
    t.integer "cph_205"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activity_entries", force: :cascade do |t|
    t.string "name"
    t.integer "minutes"
    t.integer "calories_burned"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activity_entries_on_user_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.string "rules"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "password_digest"
    t.integer "age"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_challenges", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_users_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_users_challenges_on_user_id"
  end

  add_foreign_key "activity_entries", "users"
  add_foreign_key "users_challenges", "challenges"
  add_foreign_key "users_challenges", "users"
end
