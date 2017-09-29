require 'minitest/autorun'
require 'minitest/rg'

require_relative "../guest"

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Fiona")
  end

  def test_guest_has_name
    assert_equal( "Fiona", @guest1.name)
  end





end
