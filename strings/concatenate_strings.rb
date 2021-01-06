first_name = 'Harry '
last_name = 'Potter'

name = first_name + last_name

puts name

# shovel permanently modifies the string
p first_name << last_name

p first_name

# first_name += last_name

first_name = 'Harry '
last_name = 'Potter'

# concat also permanently modifies
p first_name.concat(last_name)

p first_name

# prepend method concats the string but at
# the beginning. also permanently modifies

first_name = 'Harry '
last_name = 'Potter'
p first_name.prepend(last_name)
first_name

first_name = 'Harry '
last_name = 'Potter'
p last_name.prepend(first_name)
first_name
