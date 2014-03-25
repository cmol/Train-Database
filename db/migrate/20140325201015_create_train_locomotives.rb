class CreateTrainLocomotives < ActiveRecord::Migration
  def change
    create_table :train_locomotives do |t|
      t.integer :operator_id
      t.string :locomotive_class_name
      t.string :locomotive_class_number
      t.integer :make_id
      t.integer :locomotive_type_id
      t.string :box_number
      t.integer :owner_id
      t.integer :price
      t.integer :decoder_id
      t.integer :decoder_address

      t.timestamps
    end
  end
end
