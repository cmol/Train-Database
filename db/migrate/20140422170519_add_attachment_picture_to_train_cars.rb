class AddAttachmentPictureToTrainCars < ActiveRecord::Migration
  def self.up
    change_table :train_cars do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :train_cars, :picture
  end
end
