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

ActiveRecord::Schema.define(:version => 20101220131039) do

  create_table "earning_per_shares", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "quarter"
    t.decimal  "quarterly_profit",       :precision => 8, :scale => 0
    t.decimal  "yoy_quarterly_profit",   :precision => 8, :scale => 0
    t.decimal  "accumulated_profit",     :precision => 8, :scale => 0
    t.decimal  "yoy_accumulated_profit", :precision => 8, :scale => 0
    t.decimal  "quarterly_eps",          :precision => 5, :scale => 2
    t.decimal  "yoy_quarterly_eps",      :precision => 5, :scale => 2
    t.decimal  "accumulated_eps",        :precision => 5, :scale => 2
    t.decimal  "yoy_accumulated_eps",    :precision => 5, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_id"
  end

  create_table "prices", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.decimal  "price",      :precision => 8, :scale => 2
    t.decimal  "max_price",  :precision => 8, :scale => 2
    t.decimal  "min_price",  :precision => 8, :scale => 2
    t.integer  "qty"
    t.integer  "stock_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quarters", :force => true do |t|
    t.integer  "quarter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", :force => true do |t|
    t.string   "name"
    t.decimal  "pe",         :precision => 8, :scale => 2
    t.decimal  "pbv",        :precision => 8, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "in_port"
    t.boolean  "on_watch"
    t.decimal  "buy_target",  :precision => 4, :scale => 2
    t.decimal  "sell_target", :precision => 4, :scale => 2
    t.string   "status"
  end

  create_table "stocks01", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", :force => true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
