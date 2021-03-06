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

ActiveRecord::Schema.define(version: 20180103080055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.string "location"
    t.string "description"
    t.text "images_url", default: [], array: true
    t.bigint "flame_path_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flame_path_id"], name: "index_events_on_flame_path_id"
  end

  create_table "flame_paths", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", force: :cascade do |t|
    t.float "lat"
    t.float "long"
    t.bigint "flame_path_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flame_path_id"], name: "index_points_on_flame_path_id"
  end

  create_table "torch_votes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "torch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["torch_id"], name: "index_torch_votes_on_torch_id"
    t.index ["user_id"], name: "index_torch_votes_on_user_id"
  end

  create_table "torches", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image_url"
    t.bigint "flame_path_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flame_path_id"], name: "index_torches_on_flame_path_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "fb_id"
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "flame_paths"
  add_foreign_key "points", "flame_paths"
  add_foreign_key "torch_votes", "torches"
  add_foreign_key "torch_votes", "users"
  add_foreign_key "torches", "flame_paths"
end
