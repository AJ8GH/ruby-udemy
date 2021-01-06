class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{[*'a'..'z'].sample}-#{rand(1..99)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end
end

phone = Gadget.new
# puts phone.methods.sort # includes to_s method
puts phone.to_s
p phone.to_s

puts

# we can override the to_s method
# by designing a custom to_s method in our class.
# renaming info to to_s
# Ruby looks for method definition in current class first
# if it doesn't find it it looks in the superclass,
# then keeps going up the tree until basic object.
# but if it finds the method in the current class
# it doesn't need to keep looking.
# so this method overrides the higher 'Object' class method.
# it takes precedence

# ----- self keyword -----
# within an instance method body the self keyword will refer to the current Object
# imagine self being replaced with whatever variable is storing the Object
# we can't predict what variable name will be used to store the Object
# so we can use self and call methods on self as if it is our object.
# e.g. adding self to def to_s above :::
# self can be tricky, it can refer to different things in different contexts
# in an instance method definition it refers to the object the method is called on
# if it's used outside of an instance method definition it refers to the class itself
