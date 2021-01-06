# bang method mutates the original object they are called on.
# many methods have bang and non-bang equivalents.
# bang essentially carries out the same operation but then overwrites the object

word = 'hello'
p word.capitalize
p word

puts
p word.capitalize!
p word

puts
p word.upcase
p word

puts
p word.upcase!
p word

puts
p word.reverse
p word

puts
p word.reverse!
p word

puts
p word.swapcase
p word

puts
p word.swapcase!
p word
