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







end 