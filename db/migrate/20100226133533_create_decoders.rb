class CreateDecoders < ActiveRecord::Migration
  def self.up
    create_table :decoders do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :decoders
  end
end
