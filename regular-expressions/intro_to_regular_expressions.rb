# A regular expression is another Ruby object
# The class is Regexp
#
# used to match patterns in strings
# offers a lot more flexibility than just searching for a specific substring
#
# ---- syntax ----
# they are created with 2 forward slashes (//)
# the condition is placed between the 2 slashes

# the =~ syntax (equal tilda) will return the position of the first match
# string =~ //

p //.class

phrase = 'The Ruby Programming Language is amazing!'
p phrase =~ /T/
# returns index position of the FIRST occurance of the condition we're searching for
p phrase =~ /R/
p phrase =~ /m/
# reverse syntax works exactly the same
p /m/ =~ phrase

p phrase =~ /!/

# works with whitespace to
p phrase =~ / /

# if character isn't found, we get nil
p phrase =~ /x/

# however be careful - doesnt work with . character
# . is a wildcard meaning any character at all
# using a . as condition will always return 0
p 'The Ruby Programming Language is amazing.' =~ /./

# mulitple characters -- returns index position of the first character of the first match.
p phrase =~ /Ru/
p phrase =~ /ing/
