class UpdateProfit < ActiveRecord::Base
  consensu_ids = Consensu.find(:all)

  consensu_ids.each do |c|
    c.stock = Stock.find_by_name(c.stock_name)
	c.this_year_profit = c.this_year_EPS * c.stock.shares / 1000000
	c.next_year_profit = c.next_year_EPS * c.stock.shares / 1000000	
    c.save
  end

end
