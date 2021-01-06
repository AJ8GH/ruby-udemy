class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super # calls the initialize method in product which increments product counter
    @@widget_counter += 1
  end
end

class Thingymajig < Product
  @@thingymajig_counter = 0

  def self.counter
    @@thingymajig_counter
  end

  def initialize
    super
    @@thingymajig_counter += 1
  end
end

p Widget.counter
p Product.counter
a = Widget.new
b = Widget.new
p Widget.counter
p Product.counter
c = Thingymajig.new
d = Thingymajig.new
e = Thingymajig.new
p Thingymajig.counter
p Product.counter
