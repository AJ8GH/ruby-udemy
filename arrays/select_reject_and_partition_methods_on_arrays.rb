# select method
grades = [80, 95, 13, 76, 28, 39]

matches = grades.select { |n| n >= 75 }
p matches

evens = grades.select { |n| n.even? }
p evens

words = %w[level selfless racecar dinosaur]
palindromes = words.select { |w| w == w.reverse }
p palindromes

# reject method is the opposite to select
animals = %w[cheetah cat lion elephant dog cow]
reject_results = animals.reject {|a| a.include?('c')}
select_results = animals.select {|a| a.include?('c')}
p reject_results
p select_results

# partition method -- it's like both at the same time
foods = %w[steak steak-burger kale tuna-steaks tofu vegetables]
good, bad = foods.partition { |food| food.include?('steak')}
p good
p bad
# splits array into 2 sub arrays first where the condition evaluates to true, the second where the values return false

# coding exercise --- Evens and Odds
# Evens and Odds
# Write an evens_and_odds method that accepts an array of whole numbers.
#
# It should return an array of 2 arrays.
#
# The first nested array should contain only the odd numbers.
# The second nested array should contain only the even numbers.
# If there are no even or odd numbers, the respective inner array should be empty
#
# Ex.
#
# evens_and_odds([4, 8, 15, 16, 23, 42])
# # [[15, 23], [4, 8, 16, 42]]
#
# evens_and_odds([2, 4, 6])
# # [[], [2, 4, 6]]
#
# evens_and_odds([1, 3, 5])
# # [[1, 3, 5], []]

def evens_and_odds(arr)
  odds, evens = arr.partition { |n| n.odd? }
  [odds, evens]
end
p evens_and_odds([4, 8, 15, 16, 23, 42])
