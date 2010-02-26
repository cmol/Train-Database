# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100226133848) do

  create_table "car_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decoders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lokomotive_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "makes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operators", :force => true do |t|
    t.string   "name"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "train_cars", :force => true do |t|
    t.integer  "operator_id"
    t.string   "car_class_name"
    t.string   "car_class_number"
    t.integer  "make_id"
    t.integer  "car_type_id"
    t.string   "box_number"
    t.integer  "user_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "train_lokomotives", :force => true do |t|
    t.integer  "operator_id"
    t.string   "lokomotive_class_name"
    t.string   "lokomotive_class_number"
    t.integer  "make_id"
    t.integer  "lokomotive_type_id"
    t.string   "decoder_adderss"
    t.integer  "decoder_id"
    t.string   "box_number"
    t.integer  "user_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trains", :force => true do |t|
    t.string   "litra"
    t.string   "train_type"
    t.string   "make"
    t.string   "decoder_address"
    t.string   "decoder_version"
    t.string   "box_number"
    t.string   "owner"
    t.integer  "price",           :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "login"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

end
