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
    @room2 = Room.new(2, 4, @songs)

    @rooms = [@room1]

    @bar1 = Bar.new("CodeClanCareoke", @rooms)

  end

  def test_bar_has_name()
    assert_equal("CodeClanCareoke", @bar1.name)
  end

  def test_bar_has_entry_fee()
    assert_equal(10, @bar1.entry_fee)
  end

  def test_bar_has_rooms()
    expected = @rooms.length()
    actual = @bar1.no_rooms()
    assert_equal(expected, actual)
  end

  def test_add_room_to_bar()
    @bar1.add_room_to_bar(@room2)
    expected = 2
    actual = @bar1.no_rooms()
    assert_equal(expected, actual)
  end

  def test_bar_has_guests_in_room()
    expected = @rooms[0].no_guests()
    actual = @bar1.no_guests_in_room(1)
    assert_equal(expected, actual)
  end

  def test_bar_has_songs_in_room()
    expected = @rooms[0].no_songs()
    actual = @bar1.no_songs_in_room(1)
    assert_equal(expected, actual)
  end

  def test_check_capacity_of_room()
    expected = @rooms[0].check_capacity(2)
    actual = @bar1.check_room_capacity(1, 2)
    assert_equal(expected, actual)
  end

  def test_add_guest_to_room()
    expected = @rooms[0].add_guest(@guest3)
    actual = @bar1.add_guest_to_room(1, @guest3)
    assert_equal(expected, actual)
  end

  def test_remove_guest_from_room()
    expected = @rooms[0].remove_guest(@guest1)
    actual = @bar1.remove_guest_from_room(1, @guest3)
    assert_equal(expected, actual)
  end

  def test_add_song_to_room()
    expected = @rooms[0].add_song(@song3)
    actual = @bar1.add_song_to_room(1, @song3)
    assert_equal(expected, actual)
  end

  def test_charge_guest_entry_fee()
    @bar1.charge_guest_entry_fee(@guest1, @bar1.entry_fee)
    expected = 40
    actual = @guest1.money
    assert_equal(expected, actual)
  end




end
