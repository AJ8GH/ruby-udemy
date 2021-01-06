module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  prepend Purchaseable
  # by substituting the include keyword for prepend
  # we place the module method ahead of the class method in terms of priority
  # we can verify by checking the ancestors order

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

bn = Bookstore.new
p bn.purchase('1984')

p Bookstore.ancestors
# Purchaseable module is now ahead of Bookstore in the queue
# Ruby will now search the module for methods first
