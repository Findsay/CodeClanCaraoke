require 'minitest/autorun'
require 'minitest/rg'

require_relative "../bar"
require_relative "../room"
require_relative "../guest"
require_relative "../song"

class TestRoom < MiniTest::Test

  def setup()

    @guest1 = Guest.new("Fiona", 50)
    @guest2 = Guest.new("Adam", 100)
    @guest3 = Guest.new("Tom", 200)

    @song1 = Song.new("A Song")
    @song2 = Song.new("Another Song")
    @song3 = Song.new("Yet Another Song")

    @guests = []
    @songs =  [@song1, @song2]

    @room1 = Room.new(1, 2, @songs)

  end

  def test_check_room_has_number()
    assert_equal(1, @room1.number)
  end

  def test_check_room_has_capacity()
    assert_equal(2, @room1.capacity)
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
    #check number of guests in array has been updated
    @room1.add_guest(@guest1)
    expected = 1
    actual = @room1.no_guests()
    assert_equal(expected, actual)
  end

  def test_remove_guest_from_room
    @room1.add_guest(@guest1)
    @room1.remove_guest(@guest1)
    expected = @guests.length
    actual = @room1.no_guests
    assert_equal(expected, actual)
  end

  def test_add_song_to_room
    @room1.add_song(@song3)
    expected = 3
    actual = @room1.no_songs()
    assert_equal(expected, actual)
  end

  def test_check_room_capacity()
    assert_equal(true, @room1.check_capacity(1))
  end




end
