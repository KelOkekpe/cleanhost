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

ActiveRecord::Schema.define(version: 2020_03_13_210026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "notes"
    t.bigint "host_id"
    t.bigint "cleaner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.datetime "starts_at"
    t.integer "unit_id"
    t.decimal "price"
    t.integer "requested_by_id"
    t.string "event_id"
    t.index ["cleaner_id"], name: "index_bookings_on_cleaner_id"
    t.index ["host_id"], name: "index_bookings_on_host_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "branch"
  end

  create_table "lines", force: :cascade do |t|
    t.string "season"
    t.string "episode"
    t.string "character"
    t.string "line"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "category_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "calendar_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "trial_end_date", default: "2020-02-17 15:21:45"
    t.boolean "trial_paused", default: false
    t.string "state", default: "trial"
    t.string "user_type"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "units"
  add_foreign_key "bookings", "users", column: "requested_by_id"
  add_foreign_key "units", "users", column: "owner_id"
end
