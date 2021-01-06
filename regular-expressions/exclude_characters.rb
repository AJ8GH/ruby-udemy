sales = 'I bought some cheese ooo ueoipj 9 apples, 25 bananas, and 4 oranges at the store.'

p sales.scan(/[^aeiouAEIOU\s,\d\.]/)
# returns only the constanants from the string as chars.

# ^ character before some characters excludes these characters

p sales.scan(/[aeiouAEIOU+]/)
