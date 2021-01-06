# use for a one line if statment.

number = 5_000
verified = true

if number > 2_500
  puts 'Huge number!'
end

puts 'Huge number!' if number > 2_500

# output -- if statment

puts "Big ol' number!" if number > 3_000 && verified

x = 8
puts 'x is not greater than 10!' unless x > 10

# can also use with while and until
