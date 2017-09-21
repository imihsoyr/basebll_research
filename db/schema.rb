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

ActiveRecord::Schema.define(version: 20170921040121) do

  create_table "dashboards", force: :cascade do |t|
    t.string   "team",             limit: 255
    t.integer  "game",             limit: 4
    t.integer  "plate_appearance", limit: 4
    t.integer  "homerun",          limit: 4
    t.integer  "run",              limit: 4
    t.integer  "runs_batted_in",   limit: 4
    t.integer  "stolen_base",      limit: 4
    t.float    "bb_persent",       limit: 24
    t.float    "k_persent",        limit: 24
    t.float    "iso",              limit: 24
    t.float    "babip",            limit: 24
    t.float    "average",          limit: 24
    t.float    "obp",              limit: 24
    t.float    "slg",              limit: 24
    t.float    "woba",             limit: 24
    t.integer  "wrc_plus",         limit: 4
    t.float    "bsr",              limit: 24
    t.float    "offence",          limit: 24
    t.float    "deffence",         limit: 24
    t.float    "war",              limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id",        limit: 4
  end

  create_table "players", force: :cascade do |t|
    t.string   "player_name",   limit: 255
    t.string   "backnumber",    limit: 255
    t.string   "team",          limit: 255
    t.date     "date_of_birth"
    t.integer  "height",        limit: 4
    t.integer  "weight",        limit: 4
    t.string   "throws",        limit: 255
    t.string   "bats",          limit: 255
    t.string   "positions",     limit: 255
    t.integer  "salary",        limit: 4
    t.integer  "year",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
