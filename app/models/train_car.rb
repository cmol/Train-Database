class TrainCar < ActiveRecord::Base
  belongs_to :operator
  belongs_to :make
  belongs_to :car_type
  belongs_to :owner
end
