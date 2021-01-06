require_relative "rectangle"
require_relative "square"
require_relative "circle"
# we don't need the .rb extention when requiring a nother Ruby File
# Ruby automatically assumes it is another .rb file when we give no ext name

p Circle.area(10)
p Rectangle.area(13, 9)
p Square.area(7)

require "./newsquare"

p NewSquare.area(10)
