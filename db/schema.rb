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

ActiveRecord::Schema.define(:version => 20150530072421) do

  create_table "BYQ2014Q2", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "quarter"
    t.decimal  "quarterly_profit"
    t.decimal  "yoy_quarterly_profit"
    t.decimal  "accumulated_profit"
    t.decimal  "yoy_accumulated_profit"
    t.decimal  "quarterly_eps"
    t.decimal  "yoy_quarterly_eps"
    t.decimal  "accumulated_eps"
    t.decimal  "yoy_accumulated_eps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_id"
  end

  create_table "brokers", :force => true do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "broker_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "consensus", :force => true do |t|
    t.integer  "broker_id"
    t.string   "broker_name"
    t.integer  "stock_id"
    t.string   "stock_name"
    t.decimal  "this_year_profit"
    t.decimal  "next_year_profit"
    t.decimal  "this_year_EPS",    :precision => 4, :scale => 2
    t.decimal  "next_year_EPS",    :precision => 4, :scale => 2
    t.decimal  "PE",               :precision => 5, :scale => 2
    t.decimal  "yield",            :precision => 4, :scale => 2
    t.decimal  "target_price",     :precision => 6, :scale => 2
    t.string   "recommend"
    t.date     "last_published"
    t.boolean  "research"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.decimal  "this_year_change"
    t.decimal  "next_year_change"
    t.decimal  "price_book_value"
  end

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

  create_table "earning_per_shares_BAK", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "quarter"
    t.decimal  "quarterly_profit"
    t.decimal  "yoy_quarterly_profit"
    t.decimal  "accumulated_profit"
    t.decimal  "yoy_accumulated_profit"
    t.decimal  "quarterly_eps"
    t.decimal  "yoy_quarterly_eps"
    t.decimal  "accumulated_eps"
    t.decimal  "yoy_accumulated_eps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_id"
  end

  create_table "opinions", :force => true do |t|
    t.integer  "broker_id"
    t.string   "broker_name"
    t.integer  "stock_id"
    t.string   "stock_name"
    t.decimal  "this_year_profit"
    t.decimal  "next_year_profit"
    t.decimal  "this_year_EPS",    :precision => 4, :scale => 2
    t.decimal  "next_year_EPS",    :precision => 4, :scale => 2
    t.decimal  "PE",               :precision => 5, :scale => 2
    t.decimal  "yield",            :precision => 4, :scale => 2
    t.decimal  "target_price",     :precision => 6, :scale => 2
    t.string   "recommend"
    t.date     "last_published"
    t.boolean  "research"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.decimal  "this_year_change"
    t.decimal  "next_year_change"
    t.decimal  "price_book_value"
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

  create_table "ratios", :force => true do |t|
    t.integer "stock_id"
    t.string  "stock_name"
    t.decimal "price"
    t.decimal "earning_per_share"
    t.decimal "ratio"
    t.decimal "price_book_value"
    t.decimal "yield"
    t.decimal "dividend"
    t.decimal "par_value"
    t.integer "shares"
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
    t.integer  "shares"
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
