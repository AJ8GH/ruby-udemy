# rand generates a random float number between 0 and 1
puts rand
  puts

puts rand.round(2)
puts rand.round(4)
puts (rand * 10).round
  puts

puts rand(100) # generates random no. between 0 and 100 (not including 100, rand(101) would include 100)
puts rand * 100 # same result as above but generates a float you can round if necessary
  puts

puts rand(50..60) # generates rands between specified range
puts rand (10...100)
  puts

puts rand(1.1..5.7) # generates rand float in the range
puts rand(5...6) # always returns 5
puts rand(5..6) # always returns 5 or 6
