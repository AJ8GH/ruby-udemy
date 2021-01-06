class Gadget
end

shiny = Gadget.new
flashy = Gadget.new

p shiny # representation of objects position in memory
p flashy

p shiny.object_id # different representation of objects in memory
p flashy.object_id

glossy = shiny
p glossy.class
p glossy.object_id == shiny.object_id

# # glossy is pointing to shiny. object pointer.
# it doesn't create a new object it points to the exact same object in memory
# it's an alias for the same object
# 2 variables pointing to the same object (shiny)
