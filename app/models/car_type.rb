class CarType < ActiveRecord::Base
  has_many :train_cars
end
