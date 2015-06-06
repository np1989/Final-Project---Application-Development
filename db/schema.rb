# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150606220239) do

  create_table "sights", force: :cascade do |t|
    t.string   "country_location"
    t.string   "city_location"
    t.string   "tour_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tour_guides", force: :cascade do |t|
    t.string   "country_location"
    t.integer  "user_id"
    t.string   "usertype"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city_location"
    t.string   "picture"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tour_sights", force: :cascade do |t|
    t.integer  "tour_id"
    t.integer  "sight_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", force: :cascade do |t|
    t.string   "tour_name"
    t.string   "starting_location"
    t.integer  "price"
    t.string   "duration"
    t.string   "description"
    t.integer  "user_id"
    t.string   "country_location"
    t.string   "city_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "usertype"
    t.string   "password"
    t.string   "country_location"
    t.string   "city_location"
    t.string   "picture"
    t.date     "dob"
    t.string   "phone_number"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "description"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
