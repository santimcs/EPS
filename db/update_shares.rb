class UpdateShares < ActiveRecord::Base
  stock_ids = Stock.find(:all)

  stock_ids.each do |s|
	s.ratio = Ratio.find_by_stock_name(s.name)
	s.shares = s.ratio.shares
	s.save
  end

end
