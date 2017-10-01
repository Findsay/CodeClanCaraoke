require 'minitest/autorun'
require 'minitest/rg'

require_relative "../guest"

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Fiona", 50)
  end

  def test_guest_has_name
    assert_equal( "Fiona", @guest1.name)
  end

  def test_guest_room_number
    assert_equal(0, @guest1.room_no)
  end

  def test_guest_has_money
    assert_equal(50, @guest1.money)
  end

  def test_deduct_entry_fee
    @guest1.deduct_entry_fee(10)
    assert_equal(40, @guest1.money)
  end





end
