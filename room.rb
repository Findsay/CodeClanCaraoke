class Room

  attr_reader :number, :capacity


  def initialize(number, capacity, guests, songs)
    @number = number
    @capacity = capacity
    @guests = guests
    @songs = songs
  end

  def no_guests
    @guests.length
  end

  def no_songs
    @songs.length
  end

  def add_guest(new_guest)
    @guests << new_guest
  end

  def remove_guest(guest_name)
    @guests.delete_if { |guest| guest.name == guest_name}
  end






end
