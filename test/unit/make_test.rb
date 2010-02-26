require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Make.new.valid?
  end
end
