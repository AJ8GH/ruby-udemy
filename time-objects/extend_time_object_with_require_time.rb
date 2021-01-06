# .parse and .strptime methods
# converting strings to time objects.
# first need to retuire time
# this adds additional functionalities to the Time class

require 'time' # must have this line of code for .parse and .strptime to work

p Time.parse("2021-01-01")
p Time.parse("2021-01-01").class

# strptime (string-parse-time) is opposite of strftime (string-for-time)

p Time.parse("03-04-2000") # interprets as dd-mm-yyyy

# strptime allows us to specify which digits are days and which are months
p Time.strptime("03-04-2000", "%m-%d-%Y")
p Time.strptime("03-04-2000", "%d-%m-%Y")
