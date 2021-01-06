class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{[*'a'..'z'].sample}-#{rand(1..99)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end

  def username
    @username
  end

  def username=(new_username) # this method is different to the getter method above
    @username = new_username # this one is for overwriting a new username
  end

  def production_number
    @production_number
  end

  def password=(password)
    @password = password
  end
end

phone = Gadget.new

# ----- getter methods ------
# data by default is not accessible by default by other parts of your program
# it should not be possible to modify the state of your objects
# apart from the way we have defined it to be possible.
# e.g. a user of a bank account shouldn't be able to modify their balance however they like!

# p phone.username
# p phone.@password
# p phone.production_number
# doesn't work as we can only communicate with objects using methods.
# instance variables are protected, we don't have access to them and can't modify them
# initialize is also a default state and it's not possible to change it as a user.
# in order to expose or get to these variables we need to define methods to get at them
# these are called getter methods
# e.g.
# password is not something a user can necessary see they won't show you it if you forget it
# - this is called write only (password)
# - variables can be read only (production_number)
# - or read and write (username)

# best practice for getter methods is give them the exact same name
# as the instance variable they are designed to access  -- defining username in Gadget class

p phone.production_number
p phone.username

# we are not actually directly calling the variable.
# we are calling a method which we have allowed access to the variable
# by not defining a password method, we have kept it hidden from the outside world

# ----- setter methods -----
# setter methods, sometimes called writer methods, alter the variables we have defined
# syntax is to define as usual with an = sign suffix in the method name
# def password=() see method above in Gadget class.
# set the parameter in the method and assign it to the instance variable
# common convention to use the same name as the instance variables
# e.g. @password = password
# we can reuse the parameter names across other methods in the class if we want to
# as these are local variables, and exist only in that single method definition

p phone.username=('rubyman')
p phone.username

# username has been successfully overwritten
# must use the = when calling the method or we get error
# p phone.password --- error

phone.password=('bestpasswordever')
# we still can't access the pw as it's write only, but the password has been changed

p phone.production_number
# this variable is read only, so we can call the getter method
# but haven't defined a setter method for this variable
# alternate syntax for writing in setter methods:::
phone.password = 'newpassword!'
# this is the shorthand syntax for overwriting instance variables
