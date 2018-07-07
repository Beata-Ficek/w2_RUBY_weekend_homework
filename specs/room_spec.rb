require("minitest/autorun")
require_relative("../room")


class TestRoom < MiniTest::Test

def setup

  @rev_de_cuba = Room.new("Revolution de Cuba", 5, 10)

  @Ilona = Guest.new("Ilona Jaakkola", 50, "Kalinka")
  @Asia = Guest.new("Asia Gora", 10, "The Man")
  @Raphael = Guest.new("Raphael Gora", 2, "Amsterdam")
  @Tahnee = Guest.new("Tahnee Mystery", 30, "Clearest Blue")
  @Lizzy = Guest.new("Lizzy Gaskell", 20, "Final Song")
  @Klaudia = Guest.new("Klaudia Owsianka", 50, "Light it up")

  @group1 = [@Ilona, @Klaudia, @Lizzy]

  @simply_the_best = Song.new("Simply the best")

end

def test_room_name
  assert_equal("Revolution de Cuba", @rev_de_cuba.name())
end

def test_guest_list
  assert_equal(0, @rev_de_cuba.guest_list())
end

def test_check_in_guest
  @rev_de_cuba.check_in_guest(@Ilona)
  assert_equal(1, @rev_de_cuba.guest_list())
end

def test_check_out_guest
  @rev_de_cuba.check_out_guest(@Ilona)
  assert_equal(0, @rev_de_cuba.guest_list())
end

def test_add_song
  @rev_de_cuba.add_song(@simply_the_best)
  assert_equal(1, @rev_de_cuba.playlist_count)
end

def test_capacity
  assert_equal(true, @rev_de_cuba.check_capacity(@group1))
end


end
