class CreateSectors < ActiveRecord::Migration
  def self.up
    create_table :sectors do |t|
      t.string :name
      t.decimal :pe, :precision => 8, :scale => 2
      t.decimal :pbv, :precision => 8, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :sectors
  end
end
