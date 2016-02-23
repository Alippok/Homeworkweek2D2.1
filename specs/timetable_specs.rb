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
assert_equal(nil, @timetable1.available_slots)
end

def test_number_of_daily_slots
assert_equal(0, @timetable1.daily_slots.size)
end





end