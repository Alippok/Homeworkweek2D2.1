class Coach

attr_reader(:name, :role, :qualies)


def initialize(name, role, qualies)
  @name = name
  @role = role
  @qualies = qualies
end


def add_qualifications(qualifications)
  for qualification in qualifications
    @qualies.push(qualification)
  end
  
end

def check_timetable_name(timetable)
 return timetable
end

def check_num_of_slots(timetable)
  return timetable.daily_slots.size
end

def check_num_free_slots(timetable)
  all_slots = timetable.daily_slots
  free_slots = []
  for time, slot in all_slots
    if slot == "Free"
      free_slots << time
    end
  end
  return free_slots
end




end 