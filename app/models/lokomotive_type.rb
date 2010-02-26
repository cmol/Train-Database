class LokomotiveType < ActiveRecord::Base
  attr_accessible :name
  has_many :train_lokomotives
end
