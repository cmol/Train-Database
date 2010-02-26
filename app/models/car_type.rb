class CarType < ActiveRecord::Base
  attr_accessible :name
  has_many :train_cars
end
