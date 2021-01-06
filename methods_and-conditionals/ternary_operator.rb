# ternnary means 3. there are 3 components to the ternary operator:
# a statement, an if true output, and an if false output.

if 1 < 2
  puts 'Yes, it is!'
else
  puts "No, it's not!"
end

puts 1 < 2 ? "Yes, it is!" : "No, it's not!"

def even_or_odd(n)
  n.even? ? "Number's even yo!" : "That shit's odd fool!"
end

def check_pokemon(pokemon)
  pokemon == 'Charizard' ? 'Fireball!' : 'That is not Charizard!'
end

puts check_pokemon('Pikachu')
puts check_pokemon('Charizard')
