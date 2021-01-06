# ----- mixins -----
# a mixin is module that's added to a class
# why mix in modules to classes?
# different classes need similar functionalities
# e.g. String and Numeric classes both need <, >, == ... etc. comparison operators
# however neither is a subclass of the other, so cannot inheret from each other
# we also don't want to repeat code by adding the methods manually to both classes -- DRY!!
# the solution is to use mixins

# every object is a type of the object in the class above it
# e.g. string is a type of object, object is a type of basic object
#
# the comparable module (<,>,<=,>=,==,!=,.between?) is mixed into Numeric and String classes
# we can also mixin the comparable module to our own custom classes!
# to mixin a module write 'include modulename' inside the class
# we need to define how we want our objects to be compared, this isn't defined by default
# to do this we define a method with the spaceship operator
# then define a constant with a hash and create keys representing the variables you want to rank
# assign numeric values to the keys in the chosen order.
# then attr_reader to access the key

class OlympicMedal

  include Comparable

MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}

attr_reader :type # for accessing the objects type with .type once it's initialized

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

# this method is deining what the spaceship operator will return and when
bronze = OlympicMedal.new('Bronze', 5)
silver = OlympicMedal.new('Silver', 10)
gold = OlympicMedal.new('Gold', 3)

p gold > bronze
p gold > silver
p bronze < silver
p bronze > silver
p silver > gold

p silver.between?(bronze, gold)
p silver.between?(bronze, silver)
p silver.between?(gold, silver)
p silver.between?(silver, gold)
