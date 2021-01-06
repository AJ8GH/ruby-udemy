# classes are  blueprints / templates for creating objects.
# ruby's built in objects cannot represent everything.
# Ruby allows us to create custom classes to model real life things as classes
# an object is a custom container for data
# an object is something which is made from a class
# objects group functionalities into a single unit
#
# Objects have instance variables - which are also called attributes.
# They are variables that belong to the objects
# Attributes provide information about the objects current state. descriptive
# detials and characteristics, properties.
# objects also have instance methods which interact with the object.
# they also belong to the object
# they are created from the same class
# Encapsulation is a OOP concept that restricts direct access to an object.
# e.g. useful for bank accounts
#
# class is like a factory which creates objects from its blueprint
# an object is an instance of the class. it is created from the class
# instantiation is the process of creating an object from a class
# every time we create a string or an array etc. ruby instiates it
# a class is called an abstract type,
# because it hides the complexity of interacting with the data
# much like a method abstracts the complexity of a process
#
# ---- .class method ----

p 5.class
p 8.class
p 5.class == 8.class
p 4.89.class == 489.class

puts

p 1.2.class
p 400.class
p 'Hi'.class
p //.class
p (0..9).class
p Hash.new.class
p [1].class
p true.class
p false.class
p nil.class
p Proc.new {}.class
p lambda {}.class
p Time.new.class
p :to_i.class
p String.class
