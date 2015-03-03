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

ActiveRecord::Schema.define(version: 20150301061238) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "data_files", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "locationName", limit: 255
    t.string   "notes",        limit: 255
    t.float    "latitude",     limit: 24
    t.float    "longitude",    limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "merchantId",   limit: 255
  end

  create_table "models", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "merchantID",  limit: 255
    t.string   "companyName", limit: 255
    t.string   "phone",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "vending_machine_service_records", force: :cascade do |t|
    t.string   "merchantID",          limit: 255
    t.integer  "serviceTime",         limit: 4
    t.string   "serialNumber",        limit: 255
    t.integer  "photoTaken",          limit: 4
    t.string   "serviceNotes",        limit: 255
    t.integer  "ticketsAdded",        limit: 4
    t.integer  "ticketsRedeemed",     limit: 4
    t.integer  "ticketsDispensed",    limit: 4
    t.integer  "dailyHighScore",      limit: 4
    t.integer  "numberOfGamesPlayed", limit: 4
    t.string   "gameMode",            limit: 255
    t.integer  "lightConfiguration",  limit: 4
    t.integer  "creditsAdded",        limit: 4
    t.integer  "lastScore",           limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "vending_machine_statuses", force: :cascade do |t|
    t.string   "serialNumber", limit: 255
    t.string   "type",         limit: 255
    t.integer  "row",          limit: 4
    t.integer  "total",        limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "vending_machines", force: :cascade do |t|
    t.string   "merchantID",                 limit: 255
    t.string   "serialNumber",               limit: 255
    t.string   "objectName",                 limit: 255
    t.string   "locationName",               limit: 255
    t.string   "notes",                      limit: 255
    t.string   "machineID",                  limit: 255
    t.integer  "gameMinorVersion",           limit: 4
    t.integer  "gameMajorVersion",           limit: 4
    t.integer  "embeddedAuxBoardMinor",      limit: 4
    t.integer  "embeddedAuxBoardMajor",      limit: 4
    t.float    "latitude",                   limit: 24
    t.float    "longitude",                  limit: 24
    t.integer  "numberPhotos",               limit: 4
    t.integer  "lastScore",                  limit: 4
    t.integer  "currentLightConfiguration",  limit: 4
    t.integer  "currentGameMode",            limit: 4
    t.integer  "currentCredits",             limit: 4
    t.string   "machineType",                limit: 255
    t.integer  "numberGamesPlayed",          limit: 4
    t.integer  "totalNumberTicketsAdded",    limit: 4
    t.integer  "totalNumberTicketsRedeemed", limit: 4
    t.integer  "totalNumberTicketsPrinted",  limit: 4
    t.integer  "totalNumberSuccessVends",    limit: 4
    t.integer  "totalNumberErrorVends",      limit: 4
    t.integer  "numberVendRows",             limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
