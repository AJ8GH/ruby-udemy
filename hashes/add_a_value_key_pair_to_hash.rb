menu = {burger: 3.99, taco: 5.95, chips: 0.5}
p menu

menu[:sandwhich] = 2.99
p menu

# also can be used to overwrite
menu[:taco] = 2.99
p menu

# store menu::::
menu.store(:sushi, 24.99)
p menu
menu.store(:steak, 35.00)
p menu
menu.store(:steak, 40) # also overwrites
p menu
