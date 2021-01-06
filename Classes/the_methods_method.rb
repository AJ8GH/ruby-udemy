# methods method is available on every object
# it's defined in the kernel module which is mixed into every class
# every object / class inherets from it

# puts 5.methods
# puts 5.class.methods

integer_methods = 5.methods.sort
float_methods = 5.5.methods.sort

# puts integer_methods & float_methods
# puts integer_methods | float_methods
# puts integer_methods - float_methods
# puts float_methods - integer_methods

array_methods = [1,2,3].methods.sort
hash_methods = {key: 'value'}.methods.sort

# puts array_methods - hash_methods
puts hash_methods - array_methods
