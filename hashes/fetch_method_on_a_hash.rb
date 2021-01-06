menu = {burger: 3.99, taco: 5.95, chips: 0.5}

p menu[:burger]
p menu[:chips]
p menu[:salad] # returns nil

p menu.fetch(:burger)
p menu.fetch(:chips)
# p menu.fetch(:salad) # returns an error
p menu.fetch(:salad, 'not found') # returns 2nd arg as the default value if first arg is not found
p menu.fetch(:salad, 1.99)

# also works exactly the same with arrays::::
p [1,2,3,4].fetch(2)
p [1,2,3,4].fetch(0)
p [1,2,3,4].fetch(100, 'yo')
