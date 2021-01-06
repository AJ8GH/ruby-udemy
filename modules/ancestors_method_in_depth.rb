module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end
# this method overrides the module method as Ruby searches
# for instance methods within the class first!

class Supermarket
  include Purchaseable

  def purchase(item)
    "Thanks for visiting the supermarket and purchasing #{item}!"
  end
end

class CornerMart < Supermarket
end

p CornerMart.ancestors
quickstop = CornerMart.new
p quickstop.purchase("slim jims")

p Supermarket.ancestors

# review of ancestors method
p Bookstore.ancestors
# shows us all of the ancestors the class inherits from, plus any modules mixed into it
# also shows us them order in the order in which it looks for methods

bn = Bookstore.new
p bn.purchase("1984")
# Ruby method search order :::
# Ruby first looks in bookstore for the purchase method (instance methods)
# then it looks in modules. (module methods)
# then Parent class, parent class + 1, etc.

# This is useful as it allows us to customise classes and override methods,
# giving more custom fucntionality, without overwriting or changing the method in
# ancestor classes or modules
