# both map and collect are completely identical, no dif at all. map better as its shorter and is similar to other languages
nums = [1,2,3,4,5]
squares = []
nums.each {|n| squares << n * n }
p squares


nums = [2,4,6,8,10]
squares = nums.map {|n| n * n }
p squares

fahr_temp = [105, 73, 40, 18, -2]

cels_temp = fahr_temp.map do |temp|
  minus32 = temp - 32
  minus32 * (5.0/9.0)
end

p cels_temp

# puts will return nils!!!
results = [1,2,3].map {|n| puts n ** 2}
p results

# instead :::
results = [1,2,3].map {|n| n ** 2}
p results

# OR::::

results = [1,2,3].collect {|n| n ** 2}
p results

# task :::::
# write cube method that accepts array and returns new array of values cubed.
def cubes(arr)
  p cubies = arr.map {|n| n ** 3}
end

cubes([1,2,3])

# OR:::

def cubes(arr)
  cubies = arr.map {|n| n ** 3}
end

p cubes([1,2,3])
