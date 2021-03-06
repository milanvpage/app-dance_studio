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

ActiveRecord::Schema.define(version: 2021_06_23_164526) do

  create_table "dance_classes", force: :cascade do |t|
    t.string "teacher"
    t.string "level"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dancer_id"
    t.integer "studio_id"
    t.integer "style_id"
    t.string "name"
    t.date "date"
    t.time "time"
  end

  create_table "dancers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.integer "dancer_id"
    t.string "url"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
  end

end
