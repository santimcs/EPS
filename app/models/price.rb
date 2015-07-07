class Price < ActiveRecord::Base
  belongs_to :stock
default_scope :order => 'name ASC'
  def self.find_buy_alert
    where(:min_price <= stock.buy_target)
  end

end
