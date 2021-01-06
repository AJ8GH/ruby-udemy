shopping_list = {coffee: 6.99, apples: 2.5, cheese: 4.5}
p shopping_list[:coffee]
p shopping_list[:cheese]
p shopping_list[:juice] # returns nil

  puts

fruit_prices = Hash.new('Woops! Item not found...') # default value is now 0
p fruit_prices
p fruit_prices[:steak]
p fruit_prices['water']
p fruit_prices[907]

  puts

fruit_prices.default = 0 # alternate (preferred) syntax for setting default value
p fruit_prices
p fruit_prices[:steak]
p fruit_prices['water']
p fruit_prices[907]
