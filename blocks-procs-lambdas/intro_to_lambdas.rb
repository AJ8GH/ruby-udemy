# lambda is like a nameless method
# lambda is almost identical to proc, but 2 key differences
# lambdas are objects, like procs and unlike blocks.
# Both proc and lambda come from a class called the Proc

# proc syntax exmaple :::
square_proc = Proc.new { |n| n ** 2 }
p [1, 2, 3].map(&square_proc)
p square_proc.call(5)

square_lambda = lambda { |n| n ** 2 }
p [1, 2, 3].map(&square_lambda)
p square_lambda.call(5)

# as you can see - they are created and called in pretty much the same way

# ---- differences ----
# how they behave when they receive the wrong number of arguments
# Lambdas behaves like an annonymous methods
# methods care about the number of args they receive and with throw an error if its the wrong amount
# so will Lambdas
# in comparison, Procs will ignore any unexpected args and simply assign nil to them

# --- e.g. ---
some_proc = Proc.new { |name, age| "Your name is #{name} and your age is #{age}."}
p some_proc.call('Adam', 32)
p some_proc.call('Adam')
p some_proc.call
# the proc still outputs but the missing args become empty string space. nothing. nil

# ---- Now the same e.g. but with Lambdas ----
some_lambda = lambda { |name, age| "Your name is #{name} and your age is #{age}."}
p some_lambda.call('Adam', 32) # this works!
# p some_lambda.call('Adam') # throws an error due to missing arg
# p some_lambda.call # error due to both args missing

# programmers tend to favour lambdas as they want the program to be strict.
# want it to break if it doesn't have the right no. of args and not just assign nil, which can cause issues.

# second big difference between them is how they return values within methods

# ---- e.g. with lambda ----

def diet
  status = lambda { return 'You gave in!' } # you should never use return kw in a regular block, but lambdas are slightly different
  status.call
  'You completed the diet!'
end

p diet
result = diet
p result

# lambda returns the string to diet method and then the method continues and completes with the final string, returning that value.


# --- e.g. with proc now ----

def diet2
  status = Proc.new { return 'You gave in!' }
  status.call
  'You completed the diet!'
end

p diet2

result = diet2
p result

# the proc breaks out and the return kw, ensures that it returns the value in the proc, and skips the last part of the method entirely
# this funcionality of lambdas is again usually preferred by programmers
# usually you don't want your block to override your method and return it's own value
