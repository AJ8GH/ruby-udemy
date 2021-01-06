phrase = 'The Ruby Programming Language is amazing!'
search_for = 'Language'

p phrase.include?('Ruby')
p phrase.include? 'Ruby'
p phrase.include? 'ruby'
p phrase.include? 'ammi'
p phrase.include? 'ugaz'

puts

def custom_include?(string, substring)
  i = 0
  value = false
  while i < string.length
    if string[i, substring.length] == substring
      value = true
      break
    end
      i += 1
  end
  value
end

p custom_include?(phrase, search_for)

# Boris method

def custom_include?(string, substring)
  l = substring.length
  string.chars.each_with_index { |c, i| return true if string[i, l] == substring }
  false
end

p custom_include?(phrase, search_for)
