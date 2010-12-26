class Stock < ActiveRecord::Base
  has_many :earning_per_shares, :order => 'name ASC, year DESC, quarter DESC', :dependent => :destroy
  has_many :prices, :order => 'date DESC'

  scope :contain_char, lambda { |char| where('"stocks"."name" LIKE ?', "%#{char}%")}
  scope :is_in_port, where('in_port = ?', true)
  scope :is_on_watch, where('on_watch = ?', true)
  scope :buy_alert, lambda {
    joins(:prices).
    where('"prices"."min_price" <= "stocks"."buy_target"')
    }
  default_scope :order => 'name ASC'

  def yearly_eps
((@stock.earning_per_shares.first.accumulated_eps)/(@stock.earning_per_shares.first.quarter)*4).round(2)

  end

	def self.search(params)
    search = params[:search]
    status = params[:status]

    if "#{status}" == 'A'
      self.contain_char(search)
    elsif "#{status}" == 'I'
		  self.contain_char(search).is_in_port
    elsif "#{status}" == 'O'
      self.contain_char(search).is_on_watch
    else
      self.contain_char(search).buy_alert
    end

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


end
