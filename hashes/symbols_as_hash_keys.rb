p :name
p :name.class

p :name.methods
p 'name'.methods

p :name.methods.length
p 'name'.methods.length

person = {name:      'Adam',
          age:       32,
          handsome:  true,
          languages: %w[Ruby Javascript Python SQL]}

p person
p person[:name]
p person[:handsome]
p person[:languages]
