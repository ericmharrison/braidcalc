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

ActiveRecord::Schema.define(version: 20140328174426) do

  create_table "braid_configs", force: true do |t|
    t.integer  "braider_id"
    t.integer  "pinion_teeth"
    t.integer  "gear_teeth"
    t.float    "inches_per_minute"
    t.float    "feet_per_hour"
    t.float    "picks_per_inch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "braiders", force: true do |t|
    t.string   "name"
    t.integer  "number_of_carriers"
    t.integer  "carrier_speed"
    t.integer  "carrier_diameter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
