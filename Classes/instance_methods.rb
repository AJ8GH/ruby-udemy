# instance methods are methods which belong to
# a particular object of a certain class
# not share between objects
# instance methods are copied from the class blueprint to the object
# when the object is created.
# each object is separate and distinct and when we call the method
# we are calling that method exclusively to that object

class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{[*'a'..'z'].sample}-#{rand(1..99)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}"
    # "Gadget #{production_number} has the username #{username}"
    # this will run into an error as it will look for a LOCAL variable
    # production_number and username within the info method
    # to solve this - we use the INSTANCE variable with the sigil @ infront
  end
end

phone = Gadget.new
p phone

laptop = Gadget.new
p laptop

p phone.info
p laptop.info
# calling the info method on our object.
# this is a public method
# which means we can call it directly on an object, like .push
# contrast to public method is a private method.
# initialize is private, inaccessable, hidden away
# phone.initialize gives an error
# info is public so it's available on all instances created from gadget
# instance variables are normally on visible or accessable for users to see
# they are hidden by default, kept inside the object
# instance methods belong to objects
# object is called the receiver - it receives the method call.
# method can't be called by itself. needs an object to be called on
# instance method can't be called on the class intself,
# only an instance of the class
# e.g.
# p info -- error
# p Gadget.info -- error
# p phone.info -- correct

# puts phone.methods.sort # info is now in list of methods on phone
p phone.methods - Object.methods # info now the only method remaining.

class Laptop
  def initialize
    @user
    @password
    @OS
  end
end
