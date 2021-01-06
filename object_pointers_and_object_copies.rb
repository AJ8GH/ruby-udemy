# variables and objects
# all ruby obejcts live on the heap - an area of computter memory
# ruby creates space for each object on the heap
# an object returns a reference to its memory address when it is created
# variables do not hold the object, they hold the reference to the object
# ananlogy -- if the object is the house, the vairable is the address
# if variable is assigned to another vairable it will point to the same object
# the variable becomes an alias for the objectsthis any modification to the object will be refleted in both variables
# the object_id method returns an objects location in memory

a = [1, 2, 3]
b = [1, 2, 3]
# both look the same but are different objects in memory
p a.object_id
p b.object_id
p a.object_id == b.object_id

  puts

# Now id is the same as b is simply pointing to a's reference in memory
b = a
p a.object_id
p b.object_id
p a.object_id == b.object_id

a.push(4)
p a
p b
p a.object_id
p b.object_id

b.push(5)
p a
p b
p b.object_id == a.object_id

  puts

# .dup - creates a duplicate object with a completely separate object id and separate space in memory

a = [1,2,3]
b = a.dup

p a
p b
p a.object_id
p b.object_id
a << 4
p a
p b
