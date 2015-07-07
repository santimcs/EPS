class AddThisYearChangeToConsensus < ActiveRecord::Migration
  def change
    add_column :consensus, :this_year_change, :decimal
    add_column :consensus, :next_year_change, :decimal    
    add_column :consensus, :price_book_value, :decimal    
  end
end
