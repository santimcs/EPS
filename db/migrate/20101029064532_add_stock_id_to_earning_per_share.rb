class AddStockIdToEarningPerShare < ActiveRecord::Migration
  def self.up
    add_column :earning_per_shares, :stock_id, :integer
  end

  def self.down
    remove_column :earning_per_shares, :stock_id
  end
end
