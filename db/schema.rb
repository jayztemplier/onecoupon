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

ActiveRecord::Schema.define(:version => 20130509053911) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "address"
    t.integer  "city_id"
    t.integer  "neighbourhood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.text     "discount_summary"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "total_number"
    t.integer  "bought_number",    :default => 0
    t.boolean  "validated",        :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighbourhoods", :force => true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
