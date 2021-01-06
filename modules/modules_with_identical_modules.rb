# ideally when developing professionally
# you should only define one module per file and one class per file
# we can have identically named methods in different modules
# this is fine as they are enclosed in their own modules!

module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle

  PI = 3.14159

  def self.area(radius)
    (PI * radius ** 2).round(2)
  end
end

p Square.area(4)
p Rectangle.area(5, 4)
p Circle.area(3)

# modules are for grouping methods and functionalities. 
# house and collect different related methods and tools.
# adding flexibility to how we can design and name methods.
