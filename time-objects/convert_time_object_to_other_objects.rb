someday = Time.new(2000, 2, 15)
p someday.yday
p someday.wday
p someday.mday

puts

p someday.to_s # full time format as a string
p someday.to_s.class

p someday.ctime # string of different formate, slightly more readable date
p someday.ctime.class

puts

p someday.to_a
# --- format ----
# [seconds, minutes, hours, day, month, year, wday, yday, dst?, "timezone"]
p someday.to_a.class
