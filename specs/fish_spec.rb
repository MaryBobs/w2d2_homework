require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup

  @fish1 = Fish.new("Bill")
  @fish2 = Fish.new("Fred")
  @fish3 = Fish.new("Dave")
  @fish4 = Fish.new("Jeff")
  @fish5 = Fish.new("Pete")

  end

def test_if_fish_has_name
  assert_equal("Fred", @fish2.name)
end


end
