# iterating string chars
'Hello world'.each_char { |c| puts c }

  puts

name = 'Adam'
letters = name.split('')
letters.each { |l| puts "#{l} is awesome!" }
