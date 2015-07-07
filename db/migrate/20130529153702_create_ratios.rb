class CreateRatios < ActiveRecord::Migration
  def change
    create_table :ratios do |t|
		t.integer :stock_id
		t.string :stock_name
		t.decimal :price
		t.decimal :earning_per_share
		t.decimal :ratio
		t.decimal :price_book_value
		t.decimal :yield
		t.decimal :dividend
		t.decimal :par_value
		t.integer :shares

    end
  end
end
