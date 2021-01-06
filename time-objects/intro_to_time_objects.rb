puts Time.new
# creates new time object representing the time right now (at the time the program runs)

# format :::
# year-month-day hour-minute-second timezone relative to UTC

p today = Time.new
p today.class

puts Time.now # - alias for Time.new. exact same output
# when use now over new? when we only want time now
# we can give arguments to Time.new to select specific dates or times or both

p Time.new(2015)
# gives us 2015 as the year and the arguments we leave out default to the beginning (1 for dates and 0 for times)
p Time.new(2015, 9)
p Time.new(2015, 9, 25)
p Time.new(2015, 9, 25, 7)
p Time.new(2015, 9, 25, 7, 5)
p Time.new(2015, 9, 25, 7, 5, 3)
p Time.new(2015, 9, 25, 7, 5, 3, 65) # takes a 7th arg but doesn't display it in the output
p Time.new(2015, 9, 25, 7, 5, 3, 65, 7) # error: takes 1-7 args max
