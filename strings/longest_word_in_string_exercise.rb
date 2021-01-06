def longest_word(sentence)
  words = sentence.split
  longest = words[0]
    words.each { |w| longest = w if w.length >= longest.length }
  longest
end

p longest_word('ruby is my favorite language')
