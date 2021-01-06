def custom_max(arr)
  arr.sort[-1]
end

p custom_max([2, 4, 6, 8, 10, 12])

def custom_min(arr)
  arr.sort[0]
end

p custom_min([2, 4, 6, 8, 10, 12])


def cust_max2(arr)
  max = arr[0]
  arr.each {|n| max = n if n > max }
  max
end
p cust_max2([2, 4, 80, 8, 10, 12])

def cust_min2(arr)
  min = arr[0]
  arr.each {|n| min = n if n < min}
  min
end
p cust_min2([2, 4, 6, 8, -30, 12])
