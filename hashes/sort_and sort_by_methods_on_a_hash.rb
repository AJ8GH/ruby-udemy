pokemon = {squirtle: 'Water', bulbasaur: 'Grass',
           charizard: "Fire"}

p pokemon.sort
# converts to multi-dimensional array then sorts by keys, alphabetically
p pokemon.sort.reverse

puts

p pokemon.sort_by { |pokemon, type| type }
# just put the value or the key in the block to specify which you want to sort by
p pokemon.sort_by { |pokemon, type| type }.reverse
