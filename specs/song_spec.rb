require("minitest/autorun")
require_relative("../song")


class TestSong < MiniTest::Test

def setup
  @Manana = Song.new("Manana")
  @simply_the_best = Song.new("Simply the best")
end

def test_room_name
  assert_equal("Manana", @Manana.song_title())
end

end
