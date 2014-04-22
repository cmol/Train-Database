class AddAttachmentPictureToTrainLocomotives < ActiveRecord::Migration
  def self.up
    change_table :train_locomotives do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :train_locomotives, :picture
  end
end
