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

class Manager < Employee
  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    "My name is #{name} and I'm a manager! Woo-hoo!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}."
  end

  def yell
    "I'm working! I'm working!"
  end
end

bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 36)

p bob.yell # yell method now avialable on manager objects
# p dan.yell # error - this method not available for worker objects
p dan.clock_in('08:30')

# we can define our own custom methods for every class
# we can give a yell method to worker objects, but have it do something
# completely different than it does for the manager objects

p bob.yell
p dan.yell

# --- override methods in a subclass ---
# what if we want the introduce method to do something different for managers,
# than the method it inherits from employee class?
# we can add an instance method of the same name to the manager class directly

sally = Manager.new('Sally', 45)
p sally.introduce # the manager instance method overrides the employee one,
# since manager comes first in the hierarchy, ruby searches manager methods first,
# finds this one, stops searching and uses this one.
p dan.introduce # worker intro method still uses the employee instance method

# don't forget - can write our instance variables of our objects like this ::
# dan.age = 60
# p dan
