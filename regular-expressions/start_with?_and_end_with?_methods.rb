phrase = "The Ruby Programming Language is amazing!"

p phrase.start_with?("The")
p phrase.start_with?("The Ru")
p phrase.start_with?("Ruby")
p phrase.start_with?("the")
p phrase.downcase.start_with?("the")

puts

p phrase.end_with?("amazing!")
p phrase.end_with?("amazing")
p phrase.end_with?("zing!")

puts

def custom_start_with?(string, substring)
  l = substring.length
  string[0,l] == substring
end

def custom_end_with?(string, substring)
  l = substring.length
  string[-l, l] == substring
end

p custom_start_with?(phrase, 'The Ruby Pr')
p custom_end_with?(phrase, 'zing!')
