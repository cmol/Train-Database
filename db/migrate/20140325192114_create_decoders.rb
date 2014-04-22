class CreateDecoders < ActiveRecord::Migration
  def change
    create_table :decoders do |t|
      t.string :name

      t.timestamps
    end
  end
end
