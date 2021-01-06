# scan is similar to =~ but finds all occurances and returns them as an array

voicemail = 'I can be reached at 555-123-4567 or regexman@gmail.com'
p voicemail.scan(/e/)
p voicemail.scan(/e/).length

p voicemail.scan(/re/)

# putting the characters in [] within the // will return every instance of either character
# so below will return any occoruance of e or r in any order as an array
p voicemail.scan(/[re]/)
p voicemail.scan(/[xg]/)
# can take any character - ignores characters not found
p voicemail.scan(/[iregxI8lskzieu098230^%$))]/)
