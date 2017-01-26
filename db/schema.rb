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

ActiveRecord::Schema.define(version: 20170124205905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gamers", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "birthday"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "rating"
    t.string   "platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_gamers", force: :cascade do |t|
    t.integer  "gamer_id"
    t.integer  "games_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gamer_id"], name: "index_games_gamers_on_gamer_id", using: :btree
    t.index ["games_id"], name: "index_games_gamers_on_games_id", using: :btree
  end

  add_foreign_key "games_gamers", "gamers"
  add_foreign_key "games_gamers", "games", column: "games_id"
end
