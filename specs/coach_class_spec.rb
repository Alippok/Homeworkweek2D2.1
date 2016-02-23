require("minitest/autorun")
require_relative("../coach_class.rb")
require_relative("../timetable.rb")

class TestCoachClass < MiniTest::Test

def setup
@coach1 = Coach.new("Judy Farn", "Head coach", ["Rugby League Coaching Level 4", "Strength and Conditioning Level 5", "Food and Nutrition for Performance NA"]) #The @ is important
#here to make sure it is available across the class
@new_qualifications = ["Performance Standards National 5", "Managing Performers and Teams N8" ]
@timetable1 = Timetable.new("Free Weights")
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

def test_add_own_qualifications
  @coach1.add_qualifications(@new_qualifications)
  assert_equal(["Rugby League Coaching Level 4", "Strength and Conditioning Level 5", "Food and Nutrition for Performance NA", "Performance Standards National 5", "Managing Performers and Teams N8" ], @coach1.qualies)
end

def test_if_coach_can_check_timetable_name
  @coach1.check_timetable_name(@timetable1)
  assert_equal("Free Weights", @timetable1.name)
end

end