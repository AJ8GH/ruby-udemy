start_of_year = Time.new(2016, 1, 1)
p start_of_year
p start_of_year + 1
p start_of_year + 60
p start_of_year + 180
p start_of_year + 3600

puts

p start_of_year - 180

# instead a lot of people split the amount into minutes, hours, days etc.
# makes it more readable and easier to change later on
p start_of_year + (60 * 3)
p start_of_year + (60 * 60)
p start_of_year + (60 * 60 * 24)
p start_of_year + (60 * 60 * 24 * 7 * 5)

puts

def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  until current_date.yday == number
    current_date += (60 * 60 * 24)
  end
  current_date
end

p find_day_of_year_by_number(269)
