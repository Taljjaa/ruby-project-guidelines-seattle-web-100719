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

ActiveRecord::Schema.define(version: 20191022214001) do

  create_table "animes", force: :cascade do |t|
    t.string  "title"
    t.float   "average_rating"
    t.string  "start_date"
    t.integer "episode_count"
    t.integer "api_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
  end

  create_table "users_animes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "anime_id"
    t.boolean "finished"
  end

end
