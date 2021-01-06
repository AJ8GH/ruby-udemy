birthday = Time.new(1988, 9, 25)
p birthday

p birthday.monday?
p birthday.tuesday?
p birthday.wednesday?
p birthday.thursday?
p birthday.friday?
p birthday.saturday?
p birthday.sunday?

p birthday.dst?
# tells us if the date falls within daylight savings Time

somedate = Time.new(2014, 12, 1)
p somedate.dst?
