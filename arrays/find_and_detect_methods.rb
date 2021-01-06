words = %w[dictionary refrigerator platypus microwave]
p words.select { |w| w.length > 8 }
# select returns every value where our condition is true
p words.find {|w| w.length > 8 }
# find returns only the first
p words.detect {|w| w.length > 8}
# detect method is identical to find.

lottery = [4, 8, 15, 16, 23, 42]
result = lottery.find { |n| n.odd? }
p result

# to get the last value that appears instead of the first, reverse the array first.
p lottery.reverse.find { |n| n.odd? }
