class Make < ActiveRecord::Base
  attr_accessible :name
  has_many :train_cars
  has_many :train_lokomotives
end
