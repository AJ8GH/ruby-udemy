names = %w[Adam Jack Ashley]
  names.each { |name| puts name.upcase }

  puts

[1,2,3,4,5].each { |num| square = num ** 2
puts "the square of #{num} is #{square}"}

  puts

# better syntax for multiple lines:::
[1,2,3,4,5].each do |num|
  square = num ** 2
  puts "the square of #{num} is #{square}"
end

fives = [5,10,15,20,25,30,35,40]
fives.each {|n| p n if n.even?}

oddies = []
fives = [5,10,15,20,25,30,35,40]
fives.each {|n| oddies << n if n.odd?}
p oddies
  puts
# challenge: use each to iterate array of nums.
# add all odds to odds array, and evens to evens array.
# wrap entire operation in a method.

def even_odd(arr)
  odds = []
  evens = []
  arr.each {|n| n.even? ? evens << n : odds << n}
  p odds, evens
end

even_odd([1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,13,5,6,7,3,5,7,54])

# each within each
shirts = %w[striped white plaid band]
ties = %w[polka-dot solid-color boring]
shirts.each do |shirt|
  ties.each do |tie|
    puts "Option A: a #{shirt} shirt and a #{tie} tie."
  end
end

  puts

# each method with index :::
colors = %w[red blue green yellow]

colors.each {|color| puts "moving onto the next one. the current color is #{color}"}

colors.each_with_index {|color, index| puts "Moving on to index number #{index}, the current color is #{color}"}

# challenge
# write loopo that iterates over array
# output product of each item and it's idex position
fives = [5,10,15,20,25]
fives.each_with_index { |n, i| p n * i }

  puts
# each with index challenges :::::
# 1. write a loop that gives sum of the products of each value and its index
def sum_prods(arr)
  prods = []
  arr.each_with_index do |n, i| prods << (n * i)
  end
  p prods.sum
end
  sum_prods([5,10,15,20,25])

  puts

def products(arr)
  prods = []
  arr.each_with_index do |n, i|
  if i > n then puts "Match! index: #{i} > num: #{n}, product: #{n * i}"
  else puts "No match"
  end
  end
end

products([-3, 0, 7, 9, 2, -200])
