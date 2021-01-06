# enumerable is a popular Ruby built in module that you can mix into your custom classes
# it's mixed into arrays and hashes as they can be iterated over

# https://ruby-doc.org/core-2.7.2/Enumerable.html

class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
    # snacks is now assigned to an empty array
  end

  def add_snack(snack)
    snacks << snack
    # storing any snack added using the add_snack method in our array
  end

  def each
    snacks.each { |snack| yield snack }
#  here we are defining what the each method will iterate over within ConvenienceStore - all snacks
  end
end

bodega = ConvenienceStore.new
bodega.add_snack('Doritos')
bodega.add_snack('Slim Jims')
bodega.add_snack('Jolly Ranchers')

p bodega.snacks

# trying out some enumerable methods in our class, now that we've mixed it in
bodega.each { |snack| puts "#{snack} is delicious" }
p bodega.any? { |snack| snack.length > 10 }
p bodega.all? { |snack| snack.length > 10 }
p bodega.map { |snack| snack.upcase }
p bodega.select { |snack| snack.downcase.include? 'j' }
p bodega.sort
p bodega.take(1)
