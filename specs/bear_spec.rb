require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class TestBear < MiniTest::Test

def setup

  @bear1 = Bear.new("Alfred", "Great Bear")

end

def test_bear_has_name
  assert_equal("Alfred", @bear1.name)
end

def test_bear_has_type
  assert_equal("Great Bear", @bear1.type)
end












end
