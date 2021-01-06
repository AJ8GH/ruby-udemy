class Employee
  attr_accessor :age
  attr_accessor :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

adam = Employee.new("Adam", 32)
p adam.class
p adam.introduce

class Manager < Employee
end

class Worker < Employee
end

bob = Manager.new("Bob", 48) # still need 2 args -
# ruby knows manager is a type of employee thanks to inheritance
# Manager inherets all initialize, getter, setter, instance and class methods from employee
dan = Worker.new("Daniel", 36)
p bob.class
p dan.class
p bob.introduce
p dan.introduce

# --- check inheritance hierarchy ---
p Manager.ancestors
# Manager, Employee, Object, Kernel, BasicObject
# if we have identical methods, the one defined earliest in the tree is the one used

p Manager.superclass
p Worker.superclass
p Manager.superclass == Worker.superclass

# checking if a class inherits from another
p Manager < Employee
p Worker < Employee
p Employee < Worker
# works for any classes (and modules) above, not just the superclass ::::
p Worker < Object
p Worker < Kernel # even if it's a module mixed in to a higher class, it is still true
p Object < Kernel
p BasicObject.ancestors
p Kernel.ancestors
p Object < Object

# --- .is_a? and .instance_of? predicate methods ---

# is a returns true for it's class and any class above
p bob.is_a?(Manager)
p dan.is_a?(Worker)
p bob.is_a?(Employee)
p bob.is_a?(Object)
p bob.is_a?(Kernel) # true for modules too

puts

# instance of will only return true for the exact class.
# classes/modules above will return false
p bob.instance_of?(Manager)
p bob.instance_of?(Employee)
p bob.instance_of?(Object)
