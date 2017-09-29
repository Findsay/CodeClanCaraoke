require 'minitest/autorun'
require 'minitest/rg'

require_relative "../song"

class TestSong < MiniTest::Test

  def setup()
    @song = Song.new("A Song")
  end

  def test_song_has_name
    assert_equal( "A Song", @song.name)
  end





end
