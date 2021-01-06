# # mixins reduces the amount of code we need to write. mixin means including a module in a class
# mixin is a module that injects additional behaviour into a class
# mixins allows us to mimic inheritance from more than one class.
# Ruby is a single inheritance language, each objecs directly inherits from only one class
# a class that includes a module has access to its methods and constants
# constants and methods mixed into a class do not need to be prefixed with the module name
# inheritance - class inheritance should be used for an is-a relationship
# every class that inherits from a class should be a type of that class.
# e.g. an array inherits from Object and IS A type of object. an integer IS A type of numeric
# modules should be used for a has-a relationship. it adds functionality
# for example a String HAS A comparable feature set. Integer HAS A comparable feature set.

# Method lookup path

# the order that modules are included in a class matters
# Ruby looks at the last module included in the class first
# if multiple modules mix in methods with the same name, the las module included
# in the class definition will be used first.
# if Ruby doesn't find the relevant method in the class, then the modules,
# then the superclass or other parent classes, it will throw an error

module Purchaseable # common coding convention is for modules to end in able.
# as objects with this module are now able to do what the module contains
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")
# Ruby is looking in Bookstore class for purchase method. doesn't find it.
# then checks modules - finds it in Purchasable module and executes it's code

class Supermarket
  include Purchaseable
end

shoprite = Supermarket.new
p shoprite.purchase("Ice Cream")

class CornerMart < Supermarket
end
# we can also use inheritance to transfer our modules functionality to new classes
quickstop = CornerMart.new
p quickstop.purchase("Slim Jim")
