class Bar

  attr_reader :name, :entry_fee

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
    @entry_fee = 10
  end

  def no_rooms
    @rooms.length()
  end

  def add_room_to_bar(room)
    @rooms << room
  end

  def no_guests_in_room(room_no)
    @rooms[room_no-1].no_guests()
  end

  def no_songs_in_room(room_no)
    @rooms[room_no-1].no_songs()
  end

  def check_room_capacity(room_no, number_of_guests)
    @rooms[room_no-1].check_capacity(number_of_guests)
  end

  def add_guest_to_room(room_no, guest)
    @rooms[room_no-1].add_guest(guest)
  end

  def remove_guest_from_room(room_no, guest)
    @rooms[room_no-1].remove_guest(guest)
  end

  def add_song_to_room(room_no, song)
    @rooms[room_no-1].add_song(song)
  end

  def charge_guest_entry_fee(guest, entry_fee)
    guest.deduct_entry_fee(entry_fee)
  end





end
