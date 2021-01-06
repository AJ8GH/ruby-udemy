# no "" or '' needed and no , between strings needed either

names = %w[Adam Jack Sam Marco]
p names

# can't use with multi word strings - each word becomes a separate string
names = %w[Adam Jonasr Jack Sam Marco]
p names


# creates array of the arg no. of nils
p Array.new(1)
p Array.new(10)

p Array.new(10, 3) #second arg becomes the item in the array replacing the nils
p Array.new(10, 'hey')
p Array.new(10, [1,2,3])
