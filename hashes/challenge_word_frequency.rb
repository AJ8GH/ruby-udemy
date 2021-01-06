sentence = "Once upon a time in a land far far away"

def word_count(string)
  hash = {}
  words = string.split
  words.each { |w| hash[w] = words.count(w)}
  hash
end

  p word_count(sentence)

  # -- Return a hash where
  # -- The keys will represent the words in the string,
  # -- The values will represent the number of times
  # that key word occurs in the original string.


# Boris method
def word_count(string)
  words = string.split
  count = Hash.new(0)
  words.each { |word| count[word] += 1 }
  count
end

p word_count(sentence)
