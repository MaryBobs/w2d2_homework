require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

def setup

  @river1 = River.new("Mersey")

end

def test_if_river_has_name
  assert_equal("Mersey", @river1.name)
end


















end
