def custom_join(arr, delimiter = '')
string = arr[0]
i = 1
while i < arr.size
  string += delimiter
  string += arr[i]
  i += 1
end
  string
end

p custom_join(['joe', 'moe', 'bob', 'harry', 'john', 'adam', 'jack'], '-')


def custom_join(arr, delim = '')
  str = ''
  last_index = arr.length - 1
  arr.each_with_index do |w, i|
    str << w
    str << delim unless i == last_index
  end
  str
end

p custom_join(['joe', 'moe', 'bob', 'harry', 'john', 'adam', 'jack'], ' ')
