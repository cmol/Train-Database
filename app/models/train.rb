class Train < ActiveRecord::Base
  attr_accessible :litra, :train_type, :make, :decoder_address, :decoder_version, :box_number, :owner, :price
  
  validates_presence_of :litra
end
