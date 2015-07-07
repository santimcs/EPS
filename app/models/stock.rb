class Stock < ActiveRecord::Base
  has_many :earning_per_shares, :order => 'name ASC, year DESC, quarter DESC', :dependent => :destroy
  has_one :price
  has_many :consensus
	belongs_to :ratio
  	
  scope :contain_char, lambda { |char| where('"stocks"."name" LIKE ?', "%#{char}%")}
  scope :is_in_port, where('in_port = ?', true)
  scope :is_on_watch, where('on_watch = ?', true)
  scope :buy_alert, lambda {
    joins(:prices).
    where('"prices"."min_price" <= "stocks"."buy_target"')
    }
  scope :sell_alert, lambda {
    joins(:prices).
    where('"stocks"."in_port" = "t" AND "prices"."max_price" >= "stocks"."sell_target"')
    }    
  default_scope :order => 'name ASC'

  def yearly_eps
((@stock.earning_per_shares.first.accumulated_eps)/(@stock.earning_per_shares.first.quarter)*4).round(2)

  end



  def self.find_on_watch
    options = {
      :conditions => [ "on_watch = ?", true ],
      :order => 'name ASC'
    }
    find(:all, options)
  end

  def self.find_in_port
    options = {
      :conditions => [ "in_port = ?", true ],
      :order => 'name ASC'
    }
    find(:all, options)
  end

  def self.find_buy_alert
    options = {
      :conditions => [ "on_watch = ? AND in_port = ?", true, false ],
      :order => 'name ASC'
    }
    find(:all, options)
  end

  def self.find_sell_alert
    options = {
      :conditions => [ "in_port = ?", true ],
      :order => 'name ASC'
    }
    find(:all, options)
  end
  
end
