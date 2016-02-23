class Timetable

attr_reader(:name, :available_slots, :daily_slots)

def initialize(name)
 @name = name
 @daily_slots = Hash.new
 @available_slots
end








end