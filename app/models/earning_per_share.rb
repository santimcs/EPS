class EarningPerShare < ActiveRecord::Base
  belongs_to :stock
  def quarterly_profit_in_million
     quarterly_profit.div(1000)
   end

  def yoy_quarterly_profit_in_million
     yoy_quarterly_profit.div(1000)
   end

  def accumulated_profit_in_million
     accumulated_profit.div(1000)
   end

  def yoy_accumulated_profit_in_million
     yoy_accumulated_profit.div(1000)
   end
end
