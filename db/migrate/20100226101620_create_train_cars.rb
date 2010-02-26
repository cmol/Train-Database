class CreateTrainCars < ActiveRecord::Migration
  def self.up
    create_table :train_cars do |t|
      t.integer :operator_id
      t.string :car_class_name
      t.string :car_class_number
      t.integer :make_id
      t.integer :car_type_id
      t.string :box_number
      t.integer :user_id
      t.integer :price
      t.timestamps
    end
  end
  
  def self.down
    drop_table :train_cars
  end
end
