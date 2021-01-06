# wildcard sybol is .
# represents 'any' or 'every' character

phrase = "The Ruby Programming Language is amazing and awe-inspiring."
p phrase.scan(/./)
# returns array of every character
p phrase.scan(/.+/)
# returns array of one element - the original string
p phrase.scan(/\./)
# if we actually want to find full stops -- returns array of every occurance of "."

puts

p phrase.scan(/.am/)
# returns every character followed by am
p phrase.scan(/.ing/)

p phrase.scan(/a.e/)
# returns every character found between a and e

p phrase.scan(/Rub./)
p phrase.scan(/R.b./)
p phrase.scan(/La..u.g./)

phrase = 'The Ruby Programming Language version 2.3.3 is amazing and awe-inspiring'
p phrase.scan(/\d.\d.\d/)
