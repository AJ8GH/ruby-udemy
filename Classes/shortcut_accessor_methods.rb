class Gadget
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

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

p phone.username
phone.username = 'adamjonas'
p phone.username
p phone.production_number


# Ruby gives us a syntactical shortcut for reader and writer methods
# these are called accessor methods.
# 3 options:::
# attr_reader -- read only
# attr_accessor -- read and write
# attr_writer -- write only
# attribute is another word for an instance variable / characteristic of an object
  # attr_accessor :username -- replaces both below methods!
        # def username
        #   @username
        # end
        #
        # def username=(new_username) # this method is different to the getter method above
        #   @username = new_username # this one is for overwriting a new username
        # end
  # attr_reader :production  --- replaces :::
        # def production_number
        #   @production_number
        # end
  # attr_writer :password --- replacing :::
        # def password=(password)
        #   @password = password
        # end
# can also give multiple variables to attr-... just separate each with comma
# e.g. attr_reader :username, :password, production_number
