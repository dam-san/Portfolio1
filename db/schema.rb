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

ActiveRecord::Schema.define(version: 2021_01_07_165555) do

  create_table "boxes", force: :cascade do |t|
    t.string "name"
    t.string "image_id"
    t.integer "place_id"
    t.integer "kind", default: 0
    t.boolean "is_authorized", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brakers", force: :cascade do |t|
    t.integer "box_id"
    t.integer "size"
    t.integer "volt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.string "image_id"
    t.integer "place_id"
    t.integer "volt"
    t.float "kw"
    t.float "cos"
    t.boolean "is_authorized", default: false
  end

  create_table "places", force: :cascade do |t|
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relations", force: :cascade do |t|
    t.integer "braker_id"
    t.integer "box_id"
    t.integer "cable_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.integer "braker_id"
    t.integer "machine_id"
    t.integer "cable_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end