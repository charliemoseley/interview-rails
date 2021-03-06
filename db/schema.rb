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

ActiveRecord::Schema.define(version: 20130809080747) do

  create_table "keys", force: true do |t|
    t.integer  "shop_id"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "keys", ["identifier"], name: "index_keys_on_identifier", unique: true
  add_index "keys", ["shop_id"], name: "index_keys_on_shop_id"

  create_table "shops", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "underwritings", force: true do |t|
    t.integer  "shop_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "underwritings", ["created_at"], name: "index_underwritings_on_created_at"
  add_index "underwritings", ["shop_id"], name: "index_underwritings_on_shop_id"
  add_index "underwritings", ["status"], name: "index_underwritings_on_status"

end
