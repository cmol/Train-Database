class CreateTrains < ActiveRecord::Migration
  def self.up
    create_table :trains do |t|
      t.string :litra
      t.string :train_type
      t.string :make
      t.string :decoder_address
      t.string :decoder_version
      t.string :box_number
      t.integer :owner
      t.string :price
      t.timestamps
    end
  end
  
  def self.down
    drop_table :trains
  end
end
