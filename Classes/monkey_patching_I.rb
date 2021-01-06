# modifying or adding features to a predefined or existing class
# Ruby is so flexible and open we can change it's own build in classes
# we could add a brand new instance method to all arrays e.g.

class Array

  def mult #using a method name that already exists in that class, will overwrite that method
    total = 1
    self.each { |element| total *= element if element.is_a?(Numeric) }
    total
  end
# self within an instance method definition in a class, refers to the instance of the object we are calling the method on
  def sum #using a method name that already exists in that class, will overwrite that method
    total = 1
    self.each { |element| total += element if element.is_a?(Numeric) }
    total
  end

end

p [1, 2, 3, 'h', 4].mult # new method which didn't exist before on arrays
p [1, 'h', [], 6, 9].sum # sum now works on ineligible arrays, which would fail if we comment out our monkey patch method


class String
  def alphabet_sum
    alphabet = ('a'..'z').to_a
    sum = 0

    self.downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1
        sum += numeric_value
      end
    end
    sum
  end
end

p 'abc'.alphabet_sum
p 'zzz'.alphabet_sum
p 'Hello World'.alphabet_sum
p 'sdw892/\/\/.,<>03:{}{  @£$$%&}{sclksjdf09     2k3je2}'.alphabet_sum
