class CreateTrainLokomotives < ActiveRecord::Migration
  def self.up
    create_table :train_lokomotives do |t|
      t.integer :operator_id
      t.string :lokomotive_class_name
      t.string :lokomotive_class_number
      t.integer :make_id
      t.integer :lokomotive_type_id
      t.string :decoder_adderss
      t.integer :decoder_id
      t.string :box_number
      t.integer :user_id
      t.integer :price
      t.timestamps
    end
  end
  
  def self.down
    drop_table :train_lokomotives
  end
end
