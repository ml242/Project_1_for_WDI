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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140710135916) do

  create_table "ascends", :force => true do |t|
    t.string   "name"
    t.string   "face_location"
    t.text     "description"
    t.boolean  "is_dangerous"
    t.string   "grade"
    t.text     "comments"
    t.integer  "crag_id"
    t.string   "base_image_file_name"
    t.string   "base_image_content_type"
    t.integer  "base_image_file_size"
    t.datetime "base_image_updated_at"
  end

  create_table "climbs", :force => true do |t|
    t.text     "description"
    t.integer  "stars"
    t.integer  "user_id"
    t.integer  "ascend_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "crags", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.string   "gps_coor"
    t.string   "gps_photo"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.boolean  "has_location", :default => false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "climber_name"
    t.string   "avatar"
    t.text     "description"
    t.binary   "phone"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps",               :default => false
    t.string   "ip_address"
  end

  create_table "weathers", :force => true do |t|
    t.integer "current_temp"
    t.string  "zip"
    t.string  "forecast"
    t.integer "weather_id"
  end

end
