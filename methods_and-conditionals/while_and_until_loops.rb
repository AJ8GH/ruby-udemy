animals = %w[zebra baboon cheetah elephant kangaroo]

i = 0
while i < animals.length
  puts i
  puts animals[i]
  i += 1
end

i = 0
until i >= animals.length
  puts i
  puts animals[i]
  i += 1
end
