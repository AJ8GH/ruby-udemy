require_relative 'structs'
class Gadget

  attr_reader :production_number, :apps
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget #{production_number} has the username #{username}.
    It is made from the #{self.class} class and it
    has the ID #{object_id}."
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) unless app.nil?
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self.apps = []
    # can't use just instance method name instead of instance variables for setter methods
    # need to use self.instance method name
    # self refers to the object at hand and we call the instance method on it
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end
  # this setter method takes precedence over the attr above

  private

  attr_writer :apps

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

g = Gadget.new('Adam', 'password123')
g.install_app(:Chat)
p g.apps

g.install_app(:Twitter)
puts g.apps

g.install_app(:Chat)
puts g.apps

g.delete_app(:Chat)
g.delete_app(:Twitter)
puts g.apps
