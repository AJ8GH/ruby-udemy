# block is attached to a method

# times method :
5.times { puts 'Adam is awesome!' }
3.times do |count|
  puts "We are currently on loop number #{count}"
  puts 'Adam is wow.'
  puts 'I having fun lots here now.'
end

10.times { |i| p 3 * (i + 1) }

# upto / downto methods
5.downto(1) { |i| puts i}

5.downto(0) { |oyoyoy| puts "Next no. is #{oyoyoy}"}
3.upto(10) { |i| puts "up up up! next stop #{i}"}
6.upto(16) { puts 'Hello there my son!' }

# step method§
0.step(100,5) { |i| puts i}

arr = Array.new
0.step(100,5) { |i| arr << i}
print arr
