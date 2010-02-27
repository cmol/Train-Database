class TrainCar < ActiveRecord::Base

validates_presence_of :operator, :make, :car_type, :user
  attr_accessible :operator_id, :car_class_name, :car_class_number, :make_id, :car_type_id, :box_number, :user_id, :price
belongs_to :operator
belongs_to :make
belongs_to :car_type
belongs_to :user
end
