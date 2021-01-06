p [1,2,3] | [3,4,5]
# similar to concatenating the 2 arrays and calling the uniq method on the result

p [1,2,2,2,3,3,3,3] | [3,3,3,4,4,4,5,5,5,6,7]

p [1,2,3] | [2,3,4] | [4,5,6] | [4,5,6,6,7]

# method call syntax ::
p [1,2,3].|([3,4,5])

a = [1,1,2,3,3]
b = [3,4,4,5]

def custom_union(arr1, arr2)
  (arr1 + arr2).uniq
end

p custom_union(a, b)
p a
p b

# Boris method

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
end
p custom_union(a,b)
p a
p b
