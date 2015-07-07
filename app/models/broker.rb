class Broker < ActiveRecord::Base
  attr_accessible :broker_url, :full_name, :name
  default_scope :order => 'name ASC'	
end
