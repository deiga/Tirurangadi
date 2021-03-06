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

ActiveRecord::Schema.define(version: 20131102113652) do

  create_table "attendances", force: true do |t|
    t.integer  "candidate_id"
    t.integer  "attendee_id"
    t.boolean  "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attendances", ["attendee_id"], name: "index_attendances_on_attendee_id"
  add_index "attendances", ["candidate_id"], name: "index_attendances_on_candidate_id"

  create_table "attendees", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidates", force: true do |t|
    t.string   "title"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  create_table "events", force: true do |t|
    t.datetime "deadline"
    t.string   "location"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
