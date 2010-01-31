require 'test_helper'

class Name:stringTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Name:string.new.valid?
  end
end
