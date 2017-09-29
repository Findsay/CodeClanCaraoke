require 'minitest/autorun'
require 'minitest/rg'

require_relative "../room"
require_relative "../guest"
require_relative "../song"
require_relative "../bar"

class TestRoom < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Fiona")
    @guest2 = Guest.new("Adam")
    @guest3 = Guest.new("Tom")

    @song1 = Song.new("A Song")
    @song2 = Song.new("Another Song")

    @guests = [@guest1, @guest2]
    @songs =  [@song1, @song2]

    @room1 = Room.new(1, 4, @guests, @songs)

    @rooms = [@room1]

    @bar1 = Bar.new("CodeClanCareoke", @rooms, @guests, @songs)
  end

  def test_bar_has_name()
    assert_equal("CodeClanCareoke", @bar1.name)
  end

  def test_bar_has_rooms()
    expected = @rooms.length()
    actual = @bar1.no_rooms()
    assert_equal(expected, actual)
  end


  def test_bar_has_guests()
    expected = @guests.length()
    actual = @bar1.no_guests()
    assert_equal(expected, actual)
  end

  def test_bar_has_songs()
    expected = @songs.length()
    actual = @bar1.no_songs()
    assert_equal(expected, actual)
  end





  end






end
