class Consensus < ActiveRecord::Base
  # attr_accessible :title, :body
  


def self.search(search)
  if search
    find(:all, :conditions => ['stock_name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

  
end
