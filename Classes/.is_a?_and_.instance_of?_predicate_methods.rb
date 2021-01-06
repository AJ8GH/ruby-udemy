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
end

class Worker < Employee
end

bob = Manager.new('Bob', 48)
dan = Worker.new('Dan', 36)


###################################

p bob.is_a?(Manager)
p dan.is_a?(Worker)
p bob.is_a?(Employee)
p bob.is_a?(Object)
