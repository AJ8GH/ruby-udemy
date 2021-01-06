p [1,1,2,2,3,3,3,3,4,5]
p [1,1,2,2,3,3,3,3,4,5] - [2,3]
# - removes any instance of each element within the first array

a = [1,1,2,2,3,3,3,3,4,5]
b = [1,4,5]

def custom_subtraction(arr1, arr2)
  arr1.select {|e| !arr2.include?(e)}
end

p custom_subtraction(a, b)
p custom_subtraction(a, b) == (a - b)
p a
p b
