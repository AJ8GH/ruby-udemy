superheroes = {spiderman: 'Peter Parker', superman: 'Clark Kent',
               batman: 'Bruce Wayne'}

p superheroes

superheroes.delete(:spiderman)
p superheroes

p superheroes.delete(:batman)

removed = superheroes.delete(:superman)
p removed
p superheroes
