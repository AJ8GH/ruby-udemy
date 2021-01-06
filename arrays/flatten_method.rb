registrations = [
    %w[Bob Dan jack],
    %w[Rick Susan Molly],
    %w[Pierce Sean George]
  ]

# you can use parallel variable assignment to unpack a multidimensional array
# this still gives you three arrays stored in 3 separate variables
a, b, c = registrations
p a
p b
p c

# flatten simply unpacks each array within the 'parent' array
# and gives you a single one dimensional array, with all the elements included, now de-nested

p registrations
p registrations.flatten # does not mutate
p registrations
p registrations.flatten! # bang mutates
p registrations
