class Consensu < ActiveRecord::Base
  attr_accessible :PE, :broker_id, :broker_name, :last_published, :next_year_EPS, :next_year_profit, :recommend, :research, :stock_id, :stock_name,
   :target_price, :this_year_EPS, :this_year_profit, :yield, :this_year_change, :next_year_change, :price_book_value

	belongs_to :broker
	belongs_to :stock	
	before_save :assign_names
	RECOMMEND_TYPES = ["Buy","Hold","Sell"]
	
	private
	def assign_names
		broker = Broker.find(self.broker_id)
		self.broker_name = broker.name
		
		stock = Stock.find(self.stock_id)
		self.stock_name = stock.name	
		
		self.this_year_profit = self.this_year_EPS * stock.shares / 1000000
		 	
		self.next_year_profit = self.next_year_EPS * stock.shares / 1000000		
	end


end
