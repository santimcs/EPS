class CreateEarningPerShares < ActiveRecord::Migration
  def self.up
    create_table :earning_per_shares do |t|
      t.string :name
      t.integer :year
      t.integer :quarter
      t.decimal :quarterly_profit
      t.decimal :yoy_quarterly_profit
      t.decimal :accumulated_profit
      t.decimal :yoy_accumulated_profit
      t.decimal :quarterly_eps
      t.decimal :yoy_quarterly_eps
      t.decimal :accumulated_eps
      t.decimal :yoy_accumulated_eps

      t.timestamps
    end
  end

  def self.down
    drop_table :earning_per_shares
  end
end
