# instance methods are preferred to instance variabales
# instance methods can be called on our object.
# so this :::
#   def to_s
#     "Gadget #{@production_number} has the username #{@username}.
#     It is made from the #{self.class} class and it
#     has the ID #{self.object_id}."
#   end
# becomes :::
#   def to_s
#     "Gadget #{self.production_number} has the username #{self.username}.
#     It is made from the #{self.class} class and it
#     has the ID #{self.object_id}."
#   end
# and whenever dealing with getters we can remove self kw, as ruby knows we mean the
# instance method available on that object
# we can't remove self from class however, as class is a built in Ruby KW and ruby gets confused
# so now we have :::
#   def to_s
#     "Gadget #{production_number} has the username #{username}.
#     It is made from the #{self.class} class and it
#     has the ID #{object_id}."
#   end
#
# instead of referencing our username instance variable we are triggering
# our username instance method, which accesses the instance variable

class BankAccount
  def initialize
    @amount = 5000
  end

  def status
    "your bank account has a total of #{amount_in_dollars} dollars"
  end

private

  def amount_in_dollars
    @amount / 100
  end
# this method is a sudo-variable. it alters the variable and gives us the new value
# but doesn't actually store it as a variable, we are just using the method
# to access the new value we want to get
end

ba = BankAccount.new
p ba.status

# using instance methods instead of instance variables is more flexible and cleaner
