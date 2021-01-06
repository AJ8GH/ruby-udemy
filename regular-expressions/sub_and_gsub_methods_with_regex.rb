p 'whimper'.sub(/m/, 's')
p 'whimper mmmmm'.sub(/m/, 's')

p 'wordplay'.sub(/w/, 'sw')
p 'wordplay'.sub(/word/, 'giraffelo')

p 'aspirin'.sub!(/in/, 'ing')
# mutates

# gsub replaces all ocurrances of the character
p 'an apple'.gsub(/a/, '-')
p '555 555 1234'.gsub(/\s/, '')
# if we want to remove multiple chars it gets more complicated and ugly.
p '(555)-555 1234'.gsub(/\s/, '').gsub(/-/, '').gsub(/\(/, '').gsub(/\)/, '')
# so regex can help clean this up
p '(555)-555 1234'.gsub(/[-\s\(\)]/, "")
# use a \ prefix if a character is not working in our expression due to ruby recognising
# it as something else e.g the () characters or . can sometimes be offenders
# \(
# \)
# and \. solves this issue

# gsub! mutates original object
