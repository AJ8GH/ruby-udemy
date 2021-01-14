sales = "I'm bough'ting some cheese' ooo' ueoipj 9 apples, 25 bananas, and 4 oranges at the store."

p new = sales.scan(/[\w\s']/)
p newnew = new.join
p newnew.split

p sales.scan(/[^aeiouAEIOU\s,\d\.]/)
# returns only the constanants from the string as chars.

# ^ character before some characters excludes these characters

p sales.scan(/[aeiouAEIOU+]/)
