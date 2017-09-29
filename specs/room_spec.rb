require 'minitest/autorun'
require 'minitest/rg'

require_relative "../room"
require_relative "../guest"
require_relative "../song"

class TestRoom < MiniTest::Test

  def setup()

    @guest1 = Guest.new("Fiona")
    @guest2 = Guest.new("Adam")

    @song1 = Song.new("A Song")
    @song2 = Song.new("Another Song")

    @guests = [@guest1, @guest2]
    @songs =  [@song1, @song2]

    @room1 = Room.new(1, 4, @guests, @songs)

  end

  def test_check_room_has_number()
    assert_equal(1, @room1.number)
  end

  def test_check_room_has_capacity()
    assert_equal(4, @room1.capacity)
  end

  def test_check_room_has_guests()
    expected = @guests.length()
    assert_equal(expected, @room1.no_guests())
  end

  def test_check_room_has_song()
    expected = @songs.length()
    assert_equal(expected, @room1.no_songs())
  end

  def test_add_guest_to_room
    @room1.add_guest("Jane")
    expected = 3
    actual = @room1.no_guests
    assert_equal(expected, actual)
  end

  def test_remove_guest_from_room
    @room1.remove_guest("Adam")
    expected = 1
    actual = @room1.no_guests
    assert_equal(expected, actual)
  end



end
