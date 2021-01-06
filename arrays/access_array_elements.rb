fruits = ['apple', 'orange', 'grape', 'banana']
  p fruits[3]
  p fruits.[](3)
  p fruits[-10]
    puts

# fetch method
  p fruits.fetch(3)
  # p fruits.fetch(100) # returns an error, instead of a nil like [] method
  p fruits.fetch(100, 0) # second arg is the default value to return if first doesn't exist
  p fruits.fetch(100, 5)
  p fruits.fetch(100, 'Yo!')
  p fruits.fetch(100, nil)
  p fruits.fetch(100, false)
  p fruits.fetch(3, 7777)
  puts

nums = [1,2,3,4,5,6,7,8,9]
  p nums[5,3]
  p nums[5,10000]
  p nums[-3,3]

# .values_at() method
channels = ['CBS', 'FOX', 'NBC', 'ESPN', 'UPN']
  p channels.values_at(0, 2, 4)
# allows you to access any index, doesn't have to be sequential
  p channels.values_at(1,-1)
  p channels.values_at(3,3,3,4,4) # can also take duplicates
  p channels.values_at(1,2,66) # values that don't exist return 'nil'
    puts

# slice method
p nums.slice(3) # identical to [] syntax
p nums[3]
p nums.slice(3,3)
p nums[3,3]
p nums.slice(3..5)
p nums[3..5]
p nums
  puts

p nums.slice!(3) # bang slice returns item and deletes it from original array
p nums
  puts

# first / last methods always return an array
arr = [1,3,5,7,9,11,13,15,17,19,21]
p arr.first
p arr.last
p arr.first(1)
p arr.last(1)
p arr.first(5)
p arr.last(5)
p arr.first(0)
p arr.last(0)
p arr.first(200)

# exercise = extract elements using first and last but not in an array

def custom_first(a, n = 1)
  a[0,n]
end
p custom_first([1,2,3,4,5])

def custom_last(a, n = 1)
  a[-n,n]
end
p custom_last([1,2,3,4,5])


# pop method

arr = [1,2,3,4,5,6,7,8,9]
p arr.pop
p arr
popped_item = arr.pop
p popped_item
p arr

p arr.pop(2)
p arr
p arr.pop(3)
p arr

# shift and unshift method
arr = [1,2,3,4,5,6,7,8,9]
x = arr.shift
p x
p arr
p arr.shift(4)
p arr
  puts
  
arr.unshift(1)
p arr
arr.unshift(100,104,797)
p arr
