def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

nums = [1,2,3,4]
new_nums = []

custom_each(nums) { |n| new_nums << n * 2 }
p new_nums

names = %w[Adam Truly Emily]
custom_each(names) {|name| p name.length}
