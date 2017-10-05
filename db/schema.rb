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

ActiveRecord::Schema.define(version: 20171005043611) do

  create_table "battings", force: :cascade do |t|
    t.integer  "year",                  limit: 4
    t.string   "team_name",             limit: 255
    t.string   "bat_name",              limit: 255
    t.integer  "age",                   limit: 4
    t.integer  "games",                 limit: 4
    t.integer  "plate_appe",            limit: 4
    t.integer  "at_bats",               limit: 4
    t.integer  "runs",                  limit: 4
    t.integer  "hits",                  limit: 4
    t.integer  "doubles",               limit: 4
    t.integer  "triples",               limit: 4
    t.integer  "homeruns",              limit: 4
    t.integer  "runs_batted_in",        limit: 4
    t.integer  "stolen_bases",          limit: 4
    t.integer  "caught_steal",          limit: 4
    t.integer  "walks",                 limit: 4
    t.integer  "strikeouts",            limit: 4
    t.float    "batting_avg",           limit: 24
    t.float    "onbase_perc",           limit: 24
    t.float    "slugging_perc",         limit: 24
    t.float    "onbase_plus_slugging",  limit: 24
    t.integer  "total_bases",           limit: 4
    t.integer  "grounded_double_plays", limit: 4
    t.integer  "hit_by_pitch",          limit: 4
    t.integer  "sacrifice_hits",        limit: 4
    t.integer  "sacrifice_flies",       limit: 4
    t.integer  "intentional_bb",        limit: 4
    t.string   "notes",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "batter_id",             limit: 255
  end

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

  create_table "pitchings", force: :cascade do |t|
    t.integer  "year",                 limit: 4
    t.string   "team_name",            limit: 255
    t.string   "pit_name",             limit: 255
    t.integer  "age",                  limit: 4
    t.integer  "wins",                 limit: 4
    t.integer  "losses",               limit: 4
    t.float    "win_loss_perc",        limit: 24
    t.float    "earned_run_avg",       limit: 24
    t.integer  "games",                limit: 4
    t.integer  "games_started",        limit: 4
    t.integer  "games_finished",       limit: 4
    t.integer  "complete_game",        limit: 4
    t.integer  "shutouts",             limit: 4
    t.integer  "saves",                limit: 4
    t.float    "innings_pitched",      limit: 24
    t.integer  "hits",                 limit: 4
    t.integer  "runs",                 limit: 4
    t.integer  "earned_runs",          limit: 4
    t.integer  "homeruns",             limit: 4
    t.integer  "walks",                limit: 4
    t.integer  "intentional_bb",       limit: 4
    t.integer  "strikeouts",           limit: 4
    t.integer  "hit_by_pitch",         limit: 4
    t.integer  "balks",                limit: 4
    t.integer  "wild_pitches",         limit: 4
    t.integer  "batters_faced",        limit: 4
    t.float    "whip",                 limit: 24
    t.float    "hits_per_nine",        limit: 24
    t.float    "homeruns_per_nine",    limit: 24
    t.float    "walks_per_nine",       limit: 24
    t.float    "strikeouts_per_nine",  limit: 24
    t.float    "strikeouts_per_walks", limit: 24
    t.string   "notes",                limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pitcher_id",           limit: 255
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
    t.string   "player_id",     limit: 255
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
