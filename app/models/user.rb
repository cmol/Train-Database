class User < ActiveRecord::Base
  attr_accessible :name, :login, :password, :password_confirmation
  acts_as_authentic
end
