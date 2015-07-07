class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
  t.integer :broker_id
  t.string :broker_name
  t.integer :stock_id
  t.string :stock_name
  t.decimal :this_year_profit
  t.decimal :next_year_profit
  t.decimal :this_year_EPS, :precision => 4, :scale => 2
  t.decimal :next_year_EPS, :precision => 4, :scale => 2
  t.decimal :PE, :precision => 5, :scale => 2
  t.decimal :yield, :precision => 4, :scale => 2
  t.decimal :target_price, :precision => 6, :scale => 2
  t.string :recommend
  t.date :last_published
  t.boolean :research
      t.timestamps  
  t.decimal :this_year_change
  t.decimal :next_year_change
  t.decimal :price_book_value


    end
  end
end
