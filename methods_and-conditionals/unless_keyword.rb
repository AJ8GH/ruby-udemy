# can use in place of a negated if statement
password = 'Dominoes'

if password != 'Whiskers'
  puts 'Incorrect password'
else
  puts 'Welcome!'
end

# instead:

unless password == 'Whiskers'
  puts 'Incorrect password'
else
  puts 'Welcome!'
end

# best practice to use unless over a negated if statment
