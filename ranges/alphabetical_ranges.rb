alphabet = 'a'..'z'
p alphabet.first(5)
p alphabet.last(5)
  puts

alphabet = 'A'..'Z'
p alphabet.first(5)
p alphabet.last(5)
  puts

alphabet = 'A'..'z'
p alphabet.first(5)
p alphabet.last(5)
p alphabet.first(40) # contains some special characters between the upper and lower case letters

########## range size

numbers = 143..769 
p numbers.size
numbers = 143...769
p numbers.size
