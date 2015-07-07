class Opinion < ActiveRecord::Base
  attr_accessible :PE, :broker_id, :last_published, :next_year_EPS, :next_year_profit, :recommend, :research, :stock_id, :target_price, :this_year_EPS, :this_year_profit, :yield
  default_scope :order => 'last_published DESC'
  	belongs_to :broker
	belongs_to :stock	
  
end
