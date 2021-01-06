# block is not an object! a rare exception in ruby
# block is a collection of code to be executed
# block must be attached to a method call
# blocks alter the execution of the method
# a block is NOT an argument / parameter to the method
# blocks can be defined with { } or  do end
# blocks can get or update the value of local variables within the block
# (these are the things we deine within the vertical pipes)

# ----- methods vs blocks ------

# methods can be invoked over and over
# blocks are only called once and then disappears
# a block isolates actions away from th methods
# we use blocks to apply a functionality to a method which is customised
# methods look after everything which is consistently applied every time

# example of blocks :::::
# e.g. used within each method called on an array
# num is the block variable
[3, 5, 7, 9].each { |num| puts num ** 2 }

evens = [2, 4, 6, 8, 10]
evens.each { |n| p n ** 3}

colors = %w[Red Purple Green Blue]
statements = colors.map {|color| "#{color} is a great color"}
puts statements
puts colors

# block must be attached to a method :::::
# e.g. times method ::::
5.times { |index| puts index
                  puts "let's move onto the next loop..."}
