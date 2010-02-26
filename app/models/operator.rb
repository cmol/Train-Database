class Operator < ActiveRecord::Base
  attr_accessible :name, :full_name
  has_many :train_cars
  has_many :train_lokomotives
end
