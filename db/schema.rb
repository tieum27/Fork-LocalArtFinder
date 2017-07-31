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

ActiveRecord::Schema.define(version: 20170731230105) do

  create_table "artists", force: :cascade do |t|
    t.string "alias"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "website"
    t.decimal "sales"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string "genre"
    t.string "description"
    t.integer "price"
    t.decimal "length"
    t.decimal "width"
    t.string "medium"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_arts_on_artist_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.time "start"
    t.time "end"
    t.integer "gallery_id"
    t.integer "artist_id"
    t.integer "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_events_on_art_id"
    t.index ["artist_id"], name: "index_events_on_artist_id"
    t.index ["gallery_id"], name: "index_events_on_gallery_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "phone"
    t.time "opening"
    t.time "closing"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.integer "artist_id"
    t.integer "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["art_id"], name: "index_galleries_on_art_id"
    t.index ["artist_id"], name: "index_galleries_on_artist_id"
  end

end
