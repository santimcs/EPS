class AddInPortToStocks < ActiveRecord::Migration
  def self.up
    add_column :stocks, :in_port, :boolean
  end

  def self.down
    remove_column :stocks, :in_port
  end
end
