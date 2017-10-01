class Room

  attr_reader :number, :capacity


  def initialize(number, capacity, songs)
    @number = number
    @capacity = capacity
    @guests = []
    @songs = songs
  end

  def no_guests()
    @guests.length
  end

  def no_songs()
    @songs.length
  end

  def add_guest(new_guest)
    @guests << new_guest
  end

  def remove_guest(guest_name)
    @guests.delete_if { |guest| guest == guest_name}
  end

  def add_song(new_song)
    @songs << new_song
  end

  def check_capacity(number_of_guests)
    return true if number_of_guests < @capacity - @guests.length()
  else
    return false
  end



end
