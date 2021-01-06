# returns elements which are common in both arrays, also deduplicates

p [1,1,2,3,4,5] & [1,4,5,8,9]
p [1,2,3] & [2,3,4] & [3,4,5]
  puts puts

a = [1,1,2,3,4,5]
b = [1,4,5,8,9]

def custom_intersection(arr1, arr2)
  arr1.select{|e|arr2.include?(e)}.uniq

end

p custom_intersection(a, b)
p custom_intersection(a, b) == (a & b)
p a
p b


# Boris method

def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each {|e| final << e if arr2.include?(e)}
  final
end

p custom_intersection(a, b)
p custom_intersection(a, b) == (a & b)
p a
p b
