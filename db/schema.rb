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

ActiveRecord::Schema.define(version: 20170912025937) do

  create_table "dashboards", force: :cascade do |t|
    t.string   "player",           limit: 255
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
  end

end
