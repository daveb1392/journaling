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

ActiveRecord::Schema.define(version: 2019_08_01_130935) do

  create_table "attendances", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.integer "api_id"
    t.string "event_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journals", force: :cascade do |t|
    t.string "title"
    t.string "grateful"
    t.string "today_great"
    t.string "affirmation"
    t.string "good_deed"
    t.string "improve"
    t.string "experienced"
    t.boolean "meditate"
    t.string "which_meditation"
    t.string "how_was_day"
    t.integer "meditation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "meditations", force: :cascade do |t|
    t.string "category"
    t.string "author"
    t.string "url"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
