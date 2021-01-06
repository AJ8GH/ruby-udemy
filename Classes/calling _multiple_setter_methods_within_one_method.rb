# within Gadget class
# reset method - to reset pw un and apps
#
# we could do this :::

  def reset(username, password)
    @username = username
    @password = password
    @apps = []

# but not ideal -- were duplicating code and will have to re-validate the values with new code.
# instead we want to call our exisiting setter methods from within reset

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
# can't use just instance method name instead of instance variables for setter methods
# need to use self.instance method name or Ruby thinks we are assigning to a new local variable
# self refers to the object at hand and we call the instance method on it
# e.g. self. (instance method)password = password (argument)


end
