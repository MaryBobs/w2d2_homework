require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")


class TestRiver < MiniTest::Test

def setup

  @river1 = River.new("Mersey")

  @fish1 = Fish.new("Bill")
  @fish2 = Fish.new("Fred")
  @fish3 = Fish.new("Dave")
  @fish4 = Fish.new("Jeff")
  @fish5 = Fish.new("Pete")

end

def test_if_river_has_name
  assert_equal("Mersey", @river1.name)
end

def test_count_fish_in_river
  assert_equal(0, @river1.fish_count())
end

def test_add_fish_to_river
  @river1.add_fish(@fish)
  @river1.add_fish(@fish)
  assert_equal(2, @river1.fish_count())
end

def test_lose_fish_from_river
  @river1.add_fish(@fish1)
  @river1.add_fish(@fish2)
  @river1.lose_fish(@fish1)
  assert_equal(1, @river1.fish_count())
end

end
