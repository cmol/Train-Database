require 'test_helper'

class LokomotiveTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert LokomotiveType.new.valid?
  end
end
