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

ActiveRecord::Schema.define(:version => 20110828140108) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "investments", :force => true do |t|
    t.integer  "company_id"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kinds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "securities", :force => true do |t|
    t.string   "name"
    t.string   "kind"
    t.integer  "rank"
    t.float    "liq_pref"
    t.float    "disc_fact"
    t.float    "warrant_cov"
    t.boolean  "participating"
    t.float    "partic_cap"
    t.float    "int_rate"
    t.float    "div_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "security_id"
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.integer  "shares"
    t.float    "dollars"
    t.float    "ex_price"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
