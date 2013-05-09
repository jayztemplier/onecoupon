require 'test_helper'

class NeighbourhoodTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Neighbourhood.new.valid?
  end
end
