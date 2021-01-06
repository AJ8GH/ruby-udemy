today = Time.now
p today

p today.year
p today.month
p today.day

puts

p today.hour
p today.min
p today.sec

puts

sometime = Time.new(2016, 11, 14)
p sometime.yday # day of year :: gives the number of days into the year
p sometime.wday # day of week :: runs 0 - 6 with 0 being sunday, 6 being saturday
# 0 - Sun, 1 - Mon, 2 - Tues, 3 - Weds, 4 - Thurs, 5 - Fri, 6 - Sat
p someday.mday # day of month
