require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class TestBear < MiniTest::Test

def setup

  @bear1 = Bear.new("Alfred", "Great Bear")

  @fish1 = Fish.new("Bill")
  @fish2 = Fish.new("Fred")
  @fish3 = Fish.new("Dave")
  @fish4 = Fish.new("Jeff")
  @fish5 = Fish.new("Pete")

end

def test_bear_has_name
  assert_equal("Alfred", @bear1.name)
end

def test_bear_has_type
  assert_equal("Great Bear", @bear1.type)
end

def test_stomach_is_empty
  assert_equal(0, @bear1.food_count())
end

def test_take_fish_from_river__one_fish
  @bear1.eat_fish(@fish1)
  assert_equal(1, @bear1.food_count())
end

def test_count_fish_in_stomach__two_fish
  @bear1.eat_fish(@fish1)
  @bear1.eat_fish(@fish1)
  assert_equal(2, @bear1.food_count())
end

def test_bear_takes_fish_river_loses_fish
  @river2 = River.new("Tyne")
  @river2.add_fish(@fish1)
  @river2.add_fish(@fish2)
  @bear1.take_fish_from_river(@river2)
  assert_equal(1, @river2.fish_count())
  assert_equal(1, @bear1.food_count())
end

def test_bear_roar
  assert_equal("I am Alfred the Great Bear. Hear me ROAR!!", @bear1.roar())
end


end
