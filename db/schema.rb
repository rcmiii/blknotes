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

ActiveRecord::Schema.define(:version => 20120129032514) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "blurb"
    t.text     "blurb_short"
    t.string   "image"
    t.integer  "start_date"
    t.integer  "end_date"
    t.float    "price"
    t.string   "sponsored"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone"
    t.integer  "zip"
    t.integer  "city_id"
    t.integer  "neighborhood_id"
    t.boolean  "weekly_event"
    t.text     "su_review"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", :force => true do |t|
    t.string   "name"
    t.text     "blurb"
    t.integer  "main_image"
    t.string   "listing_image"
    t.string   "thumbnails"
    t.string   "images"
    t.string   "sponsored"
    t.string   "address1"
    t.string   "address2"
    t.integer  "hot"
    t.integer  "neighborhood_id"
    t.float    "rating"
    t.string   "phone"
    t.float    "lat"
    t.float    "long"
    t.integer  "city_id"
    t.string   "hours"
    t.text     "su_review"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "zip"
    t.integer  "category_id"
    t.text     "blurb_short"
  end

end
