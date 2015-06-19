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

ActiveRecord::Schema.define(version: 20150421234143) do

  create_table "mies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gpslat"
    t.string   "gpslog"
    t.decimal  "price",         precision: 5, scale: 2
    t.integer  "supplier_id"
    t.string   "supplier_type"
  end

  add_index "mies", ["supplier_id", "supplier_type"], name: "index_mies_on_supplier_id_and_supplier_type"

  create_table "texts", force: true do |t|
    t.integer  "supplier_id"
    t.string   "supplier_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "texts", ["supplier_id", "supplier_type"], name: "index_texts_on_supplier_id_and_supplier_type"

  create_table "wheels", force: true do |t|
    t.integer  "my_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wheels", ["my_id"], name: "index_wheels_on_my_id"

end
