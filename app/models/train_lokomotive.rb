class TrainLokomotive < ActiveRecord::Base
 
validates_presence_of :operator, :make, :lokomotive_type, :user, :decoder
  attr_accessible :operator_id, :lokomotive_class_name, :lokomotive_class_number, :make_id, :lokomotive_type_id, :decoder_adderss, :decoder_id, :box_number, :user_id, :price
belongs_to :operator
belongs_to :make
belongs_to :lokomotive_type
belongs_to :decoder
belongs_to :user
end
