# instance methods and variables belong to each instance created from a class
# instance variable is an attribute of an object (instance of a class)
# instance method is a message we can send to an object created from a class
#
# class variable or method is an attribute or method we can send to a class itself,
# rather than an object instantiated from that class
#
# ---- class variable ----
# - some pieces of data extend beyond the scope of a single object
# - solves the issue of data duplication across instances
# - belongs to the whole class rather than 1 object
# - they store info that does not pertain to an instance
# - much larger in their applciation
#
# ---- class method ----
# - available on the class rather than the instance
# - contain functionality that does not involve 1 instance
# - can be called on class even if objects/instances do not exist yet
# - the new method we call upon a class to create an object is a class method
#
# ---- syntax ----
# - class variables begin with @@ (double sigil)
# - instance variables begin with @ (single sigil)
# - class methods are prefixed with the self keyword
# - be careful! in an instance method definition, self refers to the object
# - only if it's used outside of the method body and in the method name,
#   then it becomes a class method

class Bicycle
  @@maker = "BikeTech" # class variables
  @@count = 0

  def self.description # class method # self is preferred to class name
    "Hi there, I'm the blueprint for Bicycles! Use me to create a bicycle object."
  end

  def self.count # class method version of a getter method. must prefix with self.
    @@count # return the class var
  end

  def maker
    @@maker
  end
  # if we want a class variable to be accessible through instances of the class
  # we can use an instance method to referrence our class var.

  def initialize
    @@count += 1 # incrementing our class variable each time an object is created
  end
end

p Bicycle.description
p Bicycle.count # just like instance vars, class vars are protected by default unless we choose to expose them

a = Bicycle.new
p a.maker

b = Bicycle.new
c = Bicycle.new

p Bicycle.count # increment has worked
