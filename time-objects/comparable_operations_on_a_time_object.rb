# like numeric objects, time objects are comparable.
# both time and numeric object include a comparable module which allows them access to comparable methods
# reason that different objects have the same funcionality is because the functionality is mixed into the object
# will cover in greater depth in the classes section of the course.

birthday = Time.new(2016, 9, 25)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

p birthday == summer
p birthday > summer
p birthday < summer
p birthday > winter
p birthday < winter

p birthday == Time.new(2016,9,25)
p birthday == Time.new(2016,9,25,1)

p birthday != Time.new(2016,9,25)
p birthday != Time.new(2016,9,25,1)

# between method on dates ::: takes 2 dates as args :::

p independence_day.between?(birthday, winter)
p independence_day.between?(summer, winter)
p birthday.between?(summer, winter)

p Time.new(2021,4,27).between?(Time.new(2015), Time.new(2021,8))
