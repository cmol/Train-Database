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

ActiveRecord::Schema.define(version: 20140408175438) do

  create_table "car_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decoders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locomotive_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operators", force: true do |t|
    t.string   "name"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "train_cars", force: true do |t|
    t.integer  "operator_id"
    t.string   "car_class_name"
    t.string   "car_class_number"
    t.integer  "make_id"
    t.integer  "car_type_id"
    t.string   "box_number"
    t.integer  "owner_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "train_locomotives", force: true do |t|
    t.integer  "operator_id"
    t.string   "locomotive_class_name"
    t.string   "locomotive_class_number"
    t.integer  "make_id"
    t.integer  "locomotive_type_id"
    t.string   "box_number"
    t.integer  "owner_id"
    t.integer  "price"
    t.integer  "decoder_id"
    t.integer  "decoder_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

end
