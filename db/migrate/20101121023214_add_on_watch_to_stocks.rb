class AddOnWatchToStocks < ActiveRecord::Migration
  def self.up
    add_column :stocks, :on_watch, :boolean
  end

  def self.down
    remove_column :stocks, :on_watch
  end
end
