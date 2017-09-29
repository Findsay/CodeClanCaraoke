class Bar

  attr_reader :name

  def initialize(name, rooms, guests, songs)
    @name = name
    @rooms = rooms
    @guests = guests
    @songs = songs
  end

  def no_rooms
    @rooms.length()
  end

  def no_guests
    @guests.length()
  end

  def no_songs
    @songs.length()
  end

  def add_guest(new_guest)



end
