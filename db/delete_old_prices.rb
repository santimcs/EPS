class DeleteOldPrices < ActiveRecord::Base
  price_ids = Price.find(:all)
  if price_ids.size > 0
    Price.destroy(price_ids)
    puts "#{price_ids.size} prices have been deleted!"
  end

  file_in = 'db/PRICE.csv'
  file = File.open(file_in,"r")

  file.each do |line|
    ary = line.split(",")
    name = ary[0]
    date = ary[1]
    price = ary[2]
    maxp = ary[3]
    minp = ary[4]
    qty = ary[5]
    Price.create(:name => name, :date => date, :price => price, :max_price => maxp, :min_price => minp, :qty => qty)
  end

  price_ids = Price.find(:all)
  price_ids.each do |p|
    p.stock = Stock.find_by_name(p.name)
    p.save
  end

  price_ids = Price.find(:all, :conditions => {:stock_id => nil})
  if price_ids.size > 0
    Price.destroy(price_ids)
    puts "#{price_ids.size} prices have no stock"
  end


end
