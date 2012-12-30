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

ActiveRecord::Schema.define(:version => 20121230001423) do

  create_table "carts", :force => true do |t|
    t.decimal  "cart_total",       :default => 0.0, :null => false
    t.string   "username"
    t.string   "email"
    t.string   "status"
    t.string   "address1"
    t.string   "address2"
    t.string   "province"
    t.string   "zip_code"
    t.string   "telephone_number"
    t.integer  "cart_quantity",    :default => 0,   :null => false
    t.integer  "user_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "mailing_lists", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.boolean  "receives_emails", :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "order", :force => true do |t|
    t.string   "username"
    t.decimal  "total",            :default => 0.0, :null => false
    t.string   "email"
    t.string   "status"
    t.string   "address1"
    t.string   "address2"
    t.string   "telephone_number"
    t.string   "province"
    t.string   "zip_code"
    t.integer  "quantity"
    t.integer  "cart_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "scientific_name"
    t.decimal  "price",           :default => 0.0,  :null => false
    t.text     "description"
    t.boolean  "in_stock",        :default => true, :null => false
    t.integer  "quantity",        :default => 0,    :null => false
    t.string   "packaging_type"
    t.boolean  "available",       :default => true, :null => false
    t.boolean  "picture"
    t.text     "recommendations"
    t.integer  "ranking",         :default => 0,    :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "ancestry"
  end

  add_index "products", ["ancestry"], :name => "index_products_on_ancestry"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.boolean  "admin",             :default => false, :null => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

end
