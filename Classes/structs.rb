# structs can be instead of a class. more lightweight version of a class
# they have less functionality than a typical ruby class
# they are like classes with only instance variables
# when you need to represent a more complex object, use a class
# when you only need a framework of an object, use a struct

module AppStore

  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new(:Chat, :facebook, 2.0),
    App.new(:Twitter, :Twitter, 5.8),
    App.new(:Weather, :yahoo, 10.15)
  ]

  def self.find_app(name)
    APPS.find { |app| app.name == name }
  end
end
