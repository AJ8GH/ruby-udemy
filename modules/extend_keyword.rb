module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announcer
end
# changing extend to extend gives the class access to the method itself
# rather than objects of that class

class Cat
  extend Announcer
end

# watson = Dog.new
# p watson.who_am_i # now runs an error without <include Announcer>

p Dog.who_am_i
p Cat.who_am_i
