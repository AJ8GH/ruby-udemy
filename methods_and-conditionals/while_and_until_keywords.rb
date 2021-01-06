i = 1

while i < 10
  p i
  i += 1
end

  puts

p i

status = true

while status
  print 'Please enter username: '
  username = gets.chomp.downcase
  print 'Please enter password: '
  password = gets.chomp

  if username = 'adam' && password == 'Mario1'
    puts 'Entry granted'
  elsif username == 'quit' || password == 'quit'
    puts 'Goodbye! Better luck next time!'
    status = false
  else
    puts 'Incorrect, try again or enter "quit" to leave'
  end
end

  puts

i = 1
until i > 9
  puts i
  i += 1
end
