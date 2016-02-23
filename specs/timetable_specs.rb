require("minitest/autorun")
require_relative("../timetable.rb")

class TestTimetable < MiniTest::Test

def setup

@timetable1 = Timetable.new("Free weights")

end

def test_name_of_timetable
  assert_equal("Free weights", @timetable1.name)
end








end