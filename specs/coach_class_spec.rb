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

def test_if_coach_can_check_number_of_timetable_slots
  @coach1.check_num_of_slots(@timetable1)
  assert_equal(10, @timetable1.daily_slots.size)
end

def test_if_coach_can_check_number_of_free_slots
  result = @coach1.check_num_free_slots(@timetable1)
  assert_equal(10, result)
end

def test_if_coach_can_change_a_slot
  @coach1.change_slot(@timetable1,10, "Forwards")
  assert_equal( {9 => "Free", 10 => "Forwards", 11 => "Free", 12 => "Free", 13 => "Free", 14 => "Free", 15 => "Free", 16 => "Free", 17 => "Free", 18 => "Free" }, @timetable1.daily_slots)
end

def test_if_coach_can_create_multiple_slots
  result = @coach1.create_multi_slots(@timetable1, 9, 13, 15, "Forwards")
  assert_equal( {9=>"Forwards", 13=>"Forwards", 15=>"Forwards",}, result )
end





end
