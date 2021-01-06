class Gadget # classes are named in CamelCase
end

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

# p String.new('Adam')
# p 'Adam' # calling the new method on the class to create the object

p phone
p laptop
p microwave
# all Gadgets but all different objects. above outputs their positions in memory

p phone.class
p laptop.class
p microwave.class
p phone.class.superclass
p phone.class.ancestors
p phone.is_a?(Gadget)
p phone.is_a?(Object)
p phone.is_a?(BasicObject)

puts

puts phone.methods.sort
# already has ton of methods by inhereting from object, kernel and basic object
puts

p phone.respond_to?(:class)
p phone.respond_to?(:respond_to?)
p phone.respond_to?(:length)
