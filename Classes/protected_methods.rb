# types of methods
# - public methods allow interaction with an object
# - public methods can be called on any other object
# - private methods can only be called within the object
# - if we want to abstract complexity but don't want everything in a public method
#   we can move some of that functionality into a private method
# - private methods cannot be invoked by another object
# - private method cannot be called with an explicit receiver --
#   only the current object is able to receive the method

#   ----- protected methods -----
#   somewhere in between private and public
#   - protected methods can be invoked by objects of the same class
#   - can be called within the same family of objects but not by objects from
#     a different class
#   - protected methods are used to compare objects of the same class

class Car

  def initialize(age, miles)
    base_value = 20_000
    age_deduction = age * 1000
    miles_deduction = (miles /10.to_f)
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? 'Your car is better!' : 'Your car is worse!'
  end

protected # this KW protects the method. can't call it outside of the object

  def value
    @value
  end
end

civic = Car.new(3,30000)
# p civic.value # protected method error
p fiat = Car.new(1, 20000)
p civic.compare_car_with(fiat)
#  this works because value getter method is protected.
# if it was private this would fail as no other method or object would be able to access it
# only other Car objects can access this protected method.
# any other class of object would not have access to it.
