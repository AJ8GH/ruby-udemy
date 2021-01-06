fruits = %w[apple orange grape watermelon]
p fruits

fruits[1] = 'strawberry'
p fruits

p fruits[4]
fruits[4] = 'raspberry'
p fruits[4]

# inserting to not the next index results in nils to fill the gaps
fruits[10] = 'kiwi'
p fruits


fruits[3,2] = ['canteloupe', 'mango']
p fruits

fruits[0..2] = ['blackberry', 'orange', 'pear']
p fruits

fruits[0..6] = 'blah' # removes all values specified and puts only one in their place
p fruits

fruits[0] = ['a', 'b', 'c', 'd']
p fruits

# push method
locations = ['house', 'airport', 'bar']
locations.push('restaurant', 'saloon')
p locations

# shovel operator
locations << 'club'
p locations

locations << 'gym' << 'park'
p locations

# insert method
locations.insert(1, 'garden')
p locations

locations.insert(0, 'church', 'cafe', 'france')
p locations
