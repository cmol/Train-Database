class TrainLocomotive < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "500x500>", :thumb => "100x100>", :tiny => "50x50" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  belongs_to :operator
  belongs_to :make
  belongs_to :locomotive_type
  belongs_to :decoder
  belongs_to :owner

  before_save :destroy_image?
  before_destroy :destroy_image!

  def delete_image
    @delete_image ||= "0"
  end

  def delete_image=(value)
    @delete_image = value
  end

private
  def destroy_image?
    self.picture.clear if @delete_image == "1"
  end

  def destroy_image!
    self.picture.destroy
  end

end
