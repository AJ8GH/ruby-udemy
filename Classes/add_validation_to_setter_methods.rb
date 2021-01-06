class Gadget

  attr_reader :production_number
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}."
  end

def password=(new_password)
  @password = new_password if validate_password(new_password)
end
# this setter method takes precedence over the attr above

  private

  def generate_production_number
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = [*'A'..'Z']
    middle_digits = p Time.now.year.to_s
    5.times {middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end


phone = Gadget.new('rubyfan102', 'programming123')
phone.password = '78' # does not work as doesn't meet the conditions in our new setter method
p phone.password
phone.password = 'greatpassword' # still no digit
p phone.password
phone.password = 'computer798' # finally works
p phone.password # confirmed. we can remove the read privelages from PW again.
