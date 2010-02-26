require 'test_helper'

class TrainCarTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TrainCar.new.valid?
  end
end
