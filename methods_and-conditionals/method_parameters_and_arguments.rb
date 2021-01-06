def praise_person(name, age)
  puts "#{name} is handsome"
  puts "#{name} is amazing"
  puts "#{name} is charming"
  puts "#{name} is talented"
  puts "His age next year will be #{age + 1}"
end

praise_person('Adam', 32)
praise_person('Jonas', 32)

puts
praise_person 'Adam', 32
praise_person 'Jonas', 32
