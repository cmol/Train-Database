class User < ActiveRecord::Base
  attr_accessible :name, :login, :password, :password_confirmation
  acts_as_authentic
  has_many :train_lokomotives
  has_many :train_cars
end
