class AddBuyTargetAndSellTargetToStocks < ActiveRecord::Migration
  def self.up
    add_column :stocks, :buy_target, :decimal, :precision => 4, :scale => 2
    add_column :stocks, :sell_target, :decimal, :precision => 4, :scale => 2
  end

  def self.down
  end
end
