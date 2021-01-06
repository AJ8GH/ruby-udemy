# explcit return -- using keyword return
def add_two_numbers(num1, num2)
  puts "OK, I'm solving your math problem!"
  return num1 + num2
end

add_two_numbers(2, 4)
p add_two_numbers(2, 4)
p add_two_numbers(8,8)

# implicit return -- no return keyword, method just returns last line

def sub_two_numbers(num1, num2)
  puts "OK, let's solve your math problem!"
  num1 - num2
end

p sub_two_numbers(4,2)
p sub_two_numbers(8,8)

# why use explcit return? when we want to return early.
# ruby will return the explicit return and stop evaluating.

def multiply(num1, num2)
  puts "hey you!"
  return 'I am cool'
  num1 * num2
end

multiply(2,2)
puts

# empty methods return nil

def nothing
end
p nothing

puts

def return_string
  'what will be the return value here?'
end

def return_guess
  puts "what will be the return value here"
end

p return_string

puts

p return_guess
# we are getting the puts but the last output of the method is the result of puts
# puts always returns nil. always evaluates to nil.
