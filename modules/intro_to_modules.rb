# ---- modules ----
# a module is a toolbox or container of methods and constants
# module methods and constants can be used as needed
# moduels create namespaces for methods with the same name
# modules cannot be used to create instances like classes, just a toolkit
# modules can be MIXED INto classes to add behaviours to the classesthey are
#
# ---- Syntax ----
# module names written in UpperCamelCase
# constants in modules writted in ALLCAPS (as with all constants in Ruby)
# access module methods with the dot operator (.)
# access module constants with the :: symbol
# the :: symbol is called the scope resolution operator

# ---- length conversions ----

module LengthConversions

  WEBSITE = "https://www.somerandomwebsite.com"

  def self.miles_to_feet(miles) #self means we can call miles_to_feet method on the module itself
    # this is preferred to def LengthConversions.miles_to_feet as it's more future proof - in case module name changes, which is common
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_cm(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions::WEBSITE

p LengthConversions.miles_to_feet(100)
p LengthConversions.miles_to_inches(200)
p LengthConversions.miles_to_cm(300)

# by bundling these similar methods into this module
# we now have a collection of tools we can call upon when needed
