poem = "99 bottles of beer on the wall, 99 bottles of beer"

p poem.scan(/\d+/)
# returns ALL instances of multiple digits in a row

# what if we only want the one at the start?
p poem.scan(/\A\d+/)
# adding \A before the item between //, anchors the search to the start of the string

p poem.scan(/eer\z/)
# \z anchors to the end of the string. \z always have has to be at the end of the reg expression

# these anchors only return matches at the very start or the very end of the string
