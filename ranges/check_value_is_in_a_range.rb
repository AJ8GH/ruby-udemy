half_alphabet = 'a'..'m'
puts half_alphabet.include?('j')
puts half_alphabet.include?('b')
puts half_alphabet.include?('z')
puts half_alphabet.include?('E')
puts half_alphabet.include?('m')
  puts

half_alphabet = 'a'...'m'
puts half_alphabet.include?('j')
puts half_alphabet.include?('b')
puts half_alphabet.include?('z')
puts half_alphabet.include?('E')
puts half_alphabet.include?('m')
  puts

nums = -14..79
puts nums.include?(100)
puts half_alphabet.include?(2)
puts half_alphabet.include?(79)
puts half_alphabet.include?(-5)
puts half_alphabet.include?(10)
  puts

# triple = checks a value is in a range
half_alphabet = 'a'..'m'
p half_alphabet === 'j'
p half_alphabet === 'y'
p half_alphabet === 'e'
p half_alphabet === 'j'
