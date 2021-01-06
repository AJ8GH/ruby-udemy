names = %w[Bo Moe Joe]
registrations = [true, false, false]

p names.zip(registrations)
# binds each value sharing an index position into one nested array

# can take more than one arg:::
p [1,2,3].zip([4,5,6], %w[A B C])

  puts

# def custom_zip(arr1, arr2)
#   final = []
#   arr1.size.times { final << arr1.shift(1) + arr2.shift(1) }
#   final
# end
#
# p custom_zip(names, registrations)
#
# p names
# p registrations

# Boris method
def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index { |value, index| final << [value, arr2[index]] }
  final
end

p custom_zip(names, registrations)
