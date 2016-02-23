require("minitest/autorun")
require_relative("./coach_class.rb")

class TestCoachClass < MiniTest::Test

def setup
@coach1 = Coach.new("Judy Farn", "Head coach", ["Rugby League Coaching Level 4", "Strength and Conditioning Level 5", "Food and Nutrition for Performance NA"]) #The @ is important
#here to make sure it is available across the class

end

def test_name
  assert_equal("Judy Farn", @coach1.name)
end

def test_role
  assert_equal("Head coach", @coach1.role)
end

def test_qualies
  assert_equal(["Rugby League Coaching Level 4", "Strength and Conditioning Level 5", "Food and Nutrition for Performance NA"], @coach1.qualies)
end



end