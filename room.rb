require_relative("guest")
require_relative("song")

class Room

attr_reader :name, :entry_fee

def initialize(name, capacity, entry_fee)

@name = name
@capacity = capacity
@entry_fee = entry_fee
@guest_list = []
@playlist = []

end

def guest_list()
  return @guest_list.length
end

def check_in_guest(guest)
  @guest_list << guest
end

def check_out_guest(guest)
  @guest_list.delete(guest)
end

def playlist_count()
  @playlist.length
end

def add_song(song)
  @playlist << song
end

def check_capacity(group1)

  if group1.length > @capacity
    return false
  else
    return true
  end
end

# def pay_for_entry(guest)
#   guest_wallet = @Ilona.money - @entry_fee
#   return guest_wallet

end
