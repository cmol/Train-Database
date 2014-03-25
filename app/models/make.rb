class Make < ActiveRecord::Base
  has_many :train_cars
  has_many :train_locomotives
end
