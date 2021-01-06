# squeeze
sentence = 'Thhe aardvark jummped    ovvvverrr thee ffffenncee!!!!!'
puts sentence.squeeze # removes all duplicates by default
p sentence
puts sentence.squeeze(' ') # specificies the char to focus on - only removers dups of the arg char.
sentence.squeeze!
p sentence
# bang squeeze mutates the sentence.
  puts


def custom_squeeze(s)
  uniqs = ''
  s.chars.each_with_index { |c, i| uniqs << c unless s.chars[i + 1] == c }
  uniqs
end

p custom_squeeze(sentence)
p custom_squeeze('hello you fool!')
p custom_squeeze('Adam Jonas')
