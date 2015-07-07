class Ratio < ActiveRecord::Base
	  belongs_to :stock
  attr_accessible :dividend, :earning_per_share, :par_value, :price, :price_book_value, :ratio, :shares, :stock_id, :stock_name, :yield
end
