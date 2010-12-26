class CreatePrices < ActiveRecord::Migration
  def self.up
    create_table :prices do |t|
      t.string :name
      t.date  :date
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :max_price, :precision => 8, :scale => 2
      t.decimal :min_price, :precision => 8, :scale => 2
      t.integer :qty
      t.integer :stock_id

      t.timestamps
    end
  end

  def self.down
    drop_table :prices
  end
end
