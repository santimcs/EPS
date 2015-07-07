class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
	  t.string :name
	  t.string :full_name
	  t.string :broker_url
	  
      t.timestamps
    end
  end
end
