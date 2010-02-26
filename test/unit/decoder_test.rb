require 'test_helper'

class DecoderTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Decoder.new.valid?
  end
end
