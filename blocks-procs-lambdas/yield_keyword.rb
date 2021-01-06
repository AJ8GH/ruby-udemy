# Yield transfers control
# allows more customisation of how method operates

def pass_control
  puts "This is inside the method"
  yield # pass control from the method
  puts "Now I'm back inside the method"
end

pass_control { puts "Now I'm inside the block"}
pass_control { p 2 * 2 }

# pass_control  # if you leave the block out when using yield keyword, you get an error
# when using yield, a block must be passed when calling the method

pass_control {p 'this is my line 1 in my block!!!'
              p 'this is line 2'
              p 'Yay still in the block!!!'}

# don't use the return kw in the block or you get an error

def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i { 'handsome' }
# whatever is the last evaluation in the block is the return value of the block
who_am_i { 'talented' }
# must be an implicit return, not an explicit return
# who_am_i { return 'charming' } # - does not work

def multiple_pass
  puts 'Inside the method'
  yield
  puts 'Back inside the method'
  yield
end

multiple_pass { puts "Now I'm inside the block" }

result = multiple_pass { puts "Now I'm inside the block" }
p result # returns nil as the final evaluation is puts statement which always returns nil

result = multiple_pass { "Now I'm inside the block" }
p result # returns the string as it's implicit return as the last evaluation
