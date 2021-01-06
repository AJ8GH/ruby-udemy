class Gadget
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{[*'a'..'z'].sample}-#{rand(1..99)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end
end

g1 = Gadget.new('rubyfan102', 'programming123')
g2 = Gadget.new('misterprogrammer', 'bestpassever')
g3 = Gadget.new('sportsfan100', 'topsecret')
# new must have the correct number of args or we get an error

p g1.username
p g1.production_number
g1.password = 'blahblahblah'
g1.username = 'anothergreatname'
p g1.username

g2.username = 'Mrs. Programmer'
p g2.username
