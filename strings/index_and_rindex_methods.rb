fact = 'I am very handsome.'
p fact.index('a') # returns index of first instance
p fact.rindex('a') # returns index of the last instance
  puts

p fact.index('e', 7) # 2nd arg (number) defines where it starts searching from. will only look for instances from index 7 and onwards.
# number it returns is the index counting from the beginning of the string
p fact.index('e', 6)
  puts

def custom_index(string, sub_string)
  i = 0
  return nil unless string.include?(sub_string)
  while i < string.length
    if string[i] == sub_string
      return i
      break
    else
      i += 1
    end
  end
  end

p custom_index(fact, 'a')
p custom_index(fact, 'e')
p custom_index(fact, 'm')
p custom_index(fact, 'z')
p custom_index(fact, 'am')
p custom_index(fact, 'q')



# Boris method

def custom_index2(string, sub_string)
  return nil unless string.include?(sub_string)
  length = sub_string.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == sub_string
  end
end

p custom_index2(fact, 'a')
p custom_index2(fact, 'e')
p custom_index2(fact, 'm')
p custom_index2(fact, 'z')
p custom_index2(fact, 'am')
p custom_index2(fact, 'q')
