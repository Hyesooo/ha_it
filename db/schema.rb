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

ActiveRecord::Schema.define(version: 20170808051345) do

  create_table "homes", force: :cascade do |t|
    t.integer  "houseID"
    t.string   "host_email"
    t.string   "houseName"
    t.string   "address"
    t.integer  "phoneNumber"
    t.integer  "phoneNumber2"
    t.string   "introduce"
    t.string   "rule"
    t.string   "notice"
    t.string   "univ"
    t.string   "img_house"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "host_email"
    t.string   "hostName"
    t.integer  "phoneNumber"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "hosts", ["email"], name: "index_hosts_on_email", unique: true
  add_index "hosts", ["reset_password_token"], name: "index_hosts_on_reset_password_token", unique: true

  create_table "rooms", force: :cascade do |t|
    t.integer  "roomID"
    t.integer  "houseID"
    t.string   "host_email"
    t.text     "condition"
    t.integer  "rent"
    t.string   "meal"
    t.string   "bug"
    t.float    "toilet"
    t.string   "only_F"
    t.string   "cool"
    t.string   "detail"
    t.float    "washer"
    t.string   "univ"
    t.integer  "floor"
    t.integer  "house_floor"
    t.string   "houseName"
    t.string   "address"
    t.string   "img_room"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "user_email"
    t.integer  "houseID"
    t.string   "host_email"
    t.string   "userName"
    t.integer  "phoneNumber"
    t.integer  "voucher"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
