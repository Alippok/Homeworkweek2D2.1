class Timetable

attr_reader(:name, :available_slots, :daily_slots)

def initialize(name)
 @name = name
 @daily_slots = {9 => "Free", 10 => "Free", 11 => "Free", 12 => "Free", 13 => "Free", 14 => "Free", 15 => "Free", 16 => "Free", 17 => "Free", 18 => "Free" }
 @available_slots
end

def available_slots
  slots_available = []
  for time, slot in @daily_slots
    if slot == "Free"
      slots_available << time
    end
  end  
  return slots_available.size
end

def view_available_times
  slots_available = []
  for time, slot in @daily_slots
    if slot == "Free"
      slots_available << time
    end
  end
  return slots_available
end

# def view_available_times_24_hour

end





end