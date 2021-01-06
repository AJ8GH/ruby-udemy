p 1 * 3
p 'Abc' * 3
p [1,2,3] * 3
p %w[A b c] * 3


def custom_multiply(arr, num)
  if arr.is_a? String then final = ''
  elsif arr.is_a? Array then final = []
  elsif arr.is_a? Integer then final = 0
  end
  num.times {final += arr}
  final
end

p custom_multiply('Hello', 3)
