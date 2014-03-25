class CreateLocomotiveTypes < ActiveRecord::Migration
  def change
    create_table :locomotive_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
