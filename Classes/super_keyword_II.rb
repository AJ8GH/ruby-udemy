# 3 ways we can use super keyword

# 1. super ithout parentheses ::: sends all arguments
# for passing our method to the superclass method
# when we have no argurments we want to give

# 2. super with parentheses but no arguments ::: sends no arguments
# when we are giving the super method an argument,
# but the original method the super passes to (in the superclass)
# is not expecting any args. tells super not to pass the argument and stops the error from ocurring

# 3. super with parentheses and with argurments ::: sends only specified arguments
# when you want to only pass a specific arugment up to the superclass method


class Car
  attr_reader :maker
  def initialize(maker)
    @maker = maker
  end

  def drive
    'Vroom! Vroom!'
  end
end

class Firetruck < Car
  attr_reader :sirens
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " Beep! Beep! I'm driving at #{speed} miles per hour."
  end
end

ft = Firetruck.new('Ford', 4)
p ft.drive(45)
# if the super method has an argument
# but the original method in the superclass isn't expecting any,
# we get an error
# so we give super empty parentheses ()
# which tells it not to pass any arguments up to the superclass method
p ft.maker
p ft.sirens
