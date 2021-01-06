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

  attr_reader :rank

  def initialize(name, age, rank)
    # @name = name # bad as it is repeating our code
    # @age = age # instead we want to reference the initialize method in employee
    super(name, age) # this sends the arguments to the initialize method above in employee
    @rank = rank
  end

  def introduce
    result = super # gives us the string result from introduce method in the employee class
    result += "I'm also a manager!" # concatenate the string
  end
end

# ---- super KW ---
# let's us preserve functionality of a superclass method
# and also have custom functionality for the method in the subclass

sally = Manager.new('Sally', 42, 'Vice President')
p sally.rank
p sally.name
p sally.age
p sally.introduce

# Employee
rick = Employee.new('Rick', 45)
p rick.name
p rick.age
# p rick.rank # no rank method for employee
p rick.introduce
# and we've created unique functionality for the introduce method
# when used on managers, vs employees
