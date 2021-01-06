voicemail = 'I can be reached at 555-123-4567 or regexman@gmail.com'
p voicemail.scan(/d/)
# returns every d

# regular expression includes unique characters that specify what you want to look for
p voicemail.scan(/\d/)
# putting a backslash before the character inside the // specifies character type
# \d means digit - this returns each digit in the string

p voicemail.scan(/\d+/)
# the plus returns any occurance of one or more digits in a row.
# essentially it will return any groups of consectutive digits as strings in an array

# we can also attach a block
# executes the block code on every match - the block variable represents each match
voicemail.scan(/\d+/) { |digit_match| p digit_match.length }
