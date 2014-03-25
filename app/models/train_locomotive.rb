class TrainLocomotive < ActiveRecord::Base
  belongs_to :operator
  belongs_to :make
  belongs_to :locomotive_type
  belongs_to :decoder
  belongs_to :owner
end
