# uniq method
nums = [1,2,3,2,7,7,8,9,1]
p nums.uniq
p nums
p nums.uniq!
p nums
  puts

nums = [1,2,3,2,7,7,8,9,1]
p nums
  puts

def custom_uniq(arr)
  uniq_nums = []
  arr.each { |n| uniq_nums << n unless uniq_nums.any?(n) }
  uniq_nums
end

p custom_uniq(nums)
p custom_uniq([1,1,1,1,1,2,4,5,7,8,8,8,8,8,8,8,8,9,9,9,9,9,9,9,9,9,9,9])
