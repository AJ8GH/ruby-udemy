class Gadget

  attr_writer :password
  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number # we can reference this method here and it will generate the number and assign it to the inst. var.
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}."
  end

  private

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = [*'A'..'Z']
    middle_digits = p Time.now.year.to_s
    5.times {middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end
end

# not all methods are public # phone.initialize # e.g.
phone = Gadget.new('user', 'passsword')
p phone.production_number

# issue is this method is public and we can call it outside the method.
p phone.generate_production_number # now this runs an error since adding private KW

# to solve :: we can make the method private. this means it can't be called on an object
# to make private we add private kw above the method. anything below is private.
# however other methods e.g. initialize will still have a access to it.
