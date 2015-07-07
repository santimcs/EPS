class AddSharesToStocks < ActiveRecord::Migration
  def change
    add_column :stocks, :shares, :integer
  end
end
