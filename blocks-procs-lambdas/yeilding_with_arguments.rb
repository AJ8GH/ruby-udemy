def speak_the_truth
  yield 'Adam' if block_given?
end

speak_the_truth { |name| puts "#{name} is amazing!"}
speak_the_truth { |name| puts "#{name} is brilliant!"}

def say_it_loud(name)
  yield name if block_given?
end

say_it_loud('Adam') { |name| p "#{name} is wow!"}
say_it_loud('Truly') { |name| p "#{name} is wow!"}

say_it_loud('Truly') do |name, age |
  p "#{name} is wow!"
  p age # Defining aditional block arguments, the block assigns them nil if they don't exist
end

# with multiple args
def num_eval(n1, n2, n3)
  puts 'inside the method'
  yield(n1, n2, n3)
end

result = num_eval(5, 10, 15) {|n1, n2, n3| n1 * n2 * n3}
p result

# splat args work fine here too
def num_eval2(*args)
  puts 'block stuff'
  yield (args) if block_given?
end

result2 = num_eval2(5, 10, 15) { |n1, n2, n3| n1 * n2 * n3}
p result2
