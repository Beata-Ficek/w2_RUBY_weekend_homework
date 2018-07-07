require('minitest/autorun')
require_relative('../guest')


class TestGuest < MiniTest::Test

def setup
@rev_de_cuba = Room.new("Revolution de Cuba", 5, 10)

@Ilona = Guest.new("Ilona Jaakkola", 50, "Kalinka")
@Asia = Guest.new("Asia Gora", 10, "The Man")
@Raphael = Guest.new("Raphael Gora", 2, "Amsterdam")
@Tahnee = Guest.new("Tahnee Mystery", 30, "Clearest Blue")
@Lizzy = Guest.new("Lizzy Gaskell", 20, "Final Song")
@Klaudia = Guest.new("Klaudia Owsianka", 50, "Light it up")


end

def test_guest_name
  assert_equal("Ilona Jaakkola", @Ilona.name)
end


def test_favourite_song
  assert_equal("Kalinka", @Ilona.favourite_song)
end

def test_pay_for_entry
  @Ilona.pay_for_entry(@rev_de_cuba)
  assert_equal(40, @Ilona.money)
end

end
