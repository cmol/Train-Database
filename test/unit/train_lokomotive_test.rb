require 'test_helper'

class TrainLokomotiveTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TrainLokomotive.new.valid?
  end
end
