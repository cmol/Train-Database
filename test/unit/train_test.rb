require 'test_helper'

class TrainTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Train.new.valid?
  end
end
