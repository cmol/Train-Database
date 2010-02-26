class CreateLokomotiveTypes < ActiveRecord::Migration
  def self.up
    create_table :lokomotive_types do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :lokomotive_types
  end
end
