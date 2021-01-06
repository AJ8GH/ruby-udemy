# splat args
# def sum(a,b)
# a + b
# end
# this method only takes 2 args

# this one takes any number of args
def sum(*nums)
  sum = 0
  nums.each {|n| sum += n}
  sum
end

p sum(1,2,5,7,7)
