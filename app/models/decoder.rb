class Decoder < ActiveRecord::Base
  attr_accessible :name
  has_many :train_lokomotives
end
