paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."
# using backslash \ to find literal dots from string
p paragraph.scan(/./)
p paragraph.scan(/\./)

puts

p paragraph.scan(/d/)
p paragraph.scan(/\d/)

puts

p paragraph.scan(/\D/)
# returns every NON-digit. capital \D means non-digit

p paragraph.scan(/\s/)
# \s is for whitespace characters. backslash space works too, but \s is preferred syntax

p paragraph.scan(/\S/)
# returns every NON - whitespace characters

# + means any instance of one or more of that char.
# \d -- digits
# \s -- whitespace
# capitalising the letters negates it. means return any NON- digit or space. etc.
