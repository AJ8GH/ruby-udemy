p 1.is_a?(Integer)
p 1.is_a?(String)
# p 1.is_a?(Fixnum) fixnum and bignum deprecated

arr = ['a', 'b', 'c'] # 5
if arr.is_a?(Array)
  arr.each {|x| puts x}
end

# classes all inheret from other classes. there is a pyramid
# at the top is BasicObject class
# is_a returns true if object is part of that class or inherets from that class further up the pyramid

p 1.is_a?(Object)
p 1.is_a?(BasicObject)
p [1,2,3,4].is_a?(BasicObject)

# almost everything inherets from Object
# and every object inherets from BasicObject
