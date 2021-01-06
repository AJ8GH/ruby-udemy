# inject and reduce are the exact same method with different names.
# they do the exact same thing up to you which you use
# useful when iterating over an array and you need to keep track of the computation of all elements prior to the one you are currently on.
# if we want to sum [10,20,30,40]
#   we take 0 and add 10
#   then take 10 and add 20
#   then take 30 and add 30
#   then take 60 and add 40
#   final result = 100

# argument is not essential
# previous represents the previous value
# current represents current value you're on
result = [10, 20, 30, 40].reduce(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end

p result

result = [10, 20, 30, 40].reduce {|p, c| p + c}
p result
# exact same results with inject::
  puts

result = [10, 20, 30, 40].inject { |p, c| p + c}
p result

  puts

result = [3, 4, 5, 6, 7].reduce(1) do |previous, current|
  puts "the previous value is #{previous}"
  puts "the current value is #{current}"
  previous  * current
end
p result
