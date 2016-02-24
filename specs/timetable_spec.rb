require("minitest/autorun")
require_relative("../timetable.rb")

class TestTimetable < MiniTest::Test

def setup

@timetable1 = Timetable.new("Free weights")

end

def test_name_of_timetable
  assert_equal("Free weights", @timetable1.name)
end

def test_number_of_available_slots
@timetable1.available_slots
assert_equal(10, @timetable1.available_slots)
end

def test_number_of_daily_slots
assert_equal(10, @timetable1.daily_slots.size)
end

def test_see_times_of_available_slots
  @timetable1.view_available_times
  assert_equal([9, 10, 11, 12, 13, 14, 15, 16, 17, 18],@timetable1.view_available_times)
end

# def test_see_times_of_available




end