puts 'Hello World'.count('H')
puts 'Hello World'.count('lo')
puts 'Hello World'.count('lW')
puts 'Hello World'.count('lw')
puts 'Hello World'.count('wl')

  puts

def custom_count(string, search_chars)
  str_chars = string.split('')
  matches = []
  search_chars.each_char { |l| matches << str_chars.select { |c| c == l}}
  matches.map(&:join).join.length
end

p custom_count('an amazing aadvark appeared', 'avp')

# Boris' method
def custom_count(string, search_char)
  count = 0
  string.each_char { |char| count += 1 if search_char.include?(char) }
  count
end

p custom_count('an amazing aadvark appeared', 'avp')
