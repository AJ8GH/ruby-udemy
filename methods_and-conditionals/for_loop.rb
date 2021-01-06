# for loop is equivalent to each but doesn't allow creation of local variables
# each loop ::
n = [3,5,7]
n.each {|num| puts num}

# p num # this returns an error as num no longer exists
# num is a block variable - a temporary variable which does not existing outside of the block and is gone once the block completes
# good because we can reuse the var name and it also doesn't take up memory
# that's why each preferred to for. for keeps the variable alive after the loop completes
  puts

# for loop ::
for num in n
  puts num
end

p num # unlike each - num still exists here. less ideal

  puts

rng = 1..10
rng.each {|rng_num| puts rng_num}
