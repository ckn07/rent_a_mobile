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

ActiveRecord::Schema.define(version: 2018_11_30_110146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "minDate"
    t.date "maxDate"
    t.integer "total_price"
    t.bigint "user_id"
    t.bigint "mobile_id"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Awaiting Validation", null: false
    t.index ["mobile_id"], name: "index_bookings_on_mobile_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "mobiles", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.bigint "user_id"
    t.integer "daily_price"
    t.string "photo"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.float "latitude"
    t.float "longitude"
    t.boolean "status", default: true, null: false
    t.string "grade", default: "New"
    t.boolean "earphones", default: false, null: false
    t.boolean "charger", default: false, null: false
    t.index ["user_id"], name: "index_mobiles_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "star"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "address"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "mobiles"
  add_foreign_key "bookings", "users"
  add_foreign_key "mobiles", "users"
  add_foreign_key "reviews", "bookings"
end
