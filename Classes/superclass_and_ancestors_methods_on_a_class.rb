# the objects class is another object
# there is a superclass method on classes
# which gives you the class above that class
# inheretence follows an is-a structure
# where each class is an instance of the class above it
#
# superclass is what the current class inherets its functionality from
# the superclass gives the parent class
# and the class that inherets is called the subclass
# every class in Rubuy has at least 1 superclass
# EXCEPT BasicObject at the top of the hierarchy

# superclass method returns the parent class
# ancestor method returns array of all classes that class inherets from

p 5.class
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
p 5.class.superclass.superclass.superclass.superclass

puts

p 5.class.ancestors
p 5.5.class.ancestors # also returns modules like comparable / kernel
p '5.5'.class.ancestors
p String.class.ancestors
p [].class.ancestors
p Hash.new.class.ancestors
