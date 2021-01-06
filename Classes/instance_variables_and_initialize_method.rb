# instance variables are variables that belong to a specific object
# they define object's properties and attributes
# they make up object's state
# each object can have a custom state
# e.g. every book has a title and author,
# but the exact title and author will differ book to book
# this gives uniqueness to each object
# even though they may be identical at class level.
# this uniqueness is called the object's state

# ----- defining instance variables -----
# instance variables begin with the @symbol (e.g. @name)
# @symbol is called a sigil.
# a special character that denotes the variable's scope
# wihtout the @ sigil, the var would be interpreted as a local variable
# to the method it's used in

# ----- The initialize method -----
# we write this method in our class definition.
# it has to be called initialize - part of the design of Ruby
# it's what we tell the class to run
# whenever an object is created from that class
# initialize method is called immmediately
# when an object is instantiated from a class with the .new method

# offers an opportunity to assign values to instance vairables
# to define the objects intial state when object is first created
# if no initialize method is defined in the class,
# each object is instantiated with no state.
# like the gadgets in the previous lessson
# the assignment of values to instance variables
# does not mean the values have to stay constant.
# the objects state can be altered later

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{[*'a'..'z'].sample}-#{rand(1..99)}}"
  end
end

phone = Gadget.new
p phone

laptop = Gadget.new
p laptop

# initialize is a private method
# can't call it on objects of the class.
# it's never mean to be called or used in your code
# only to be strictly defined within your class definition
# and Ruby knows to run it when creating objects from your class
# our class objects inheret a method called instance variables
# this shows us which instance_variables our object has

p phone.instance_variables
p laptop.instance_variables

# we can change these variables from their default state later on
