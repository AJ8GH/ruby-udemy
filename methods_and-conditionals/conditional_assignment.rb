# conditional operator ||= assigns value to a variable
# but ONLY if the variable's current value is nil
y = nil
p y

# because y == nil, 5 is assigned to y
y ||= 5
p y

# y == 5 is 10 is not assigned, stays as 5
y ||= 10
p y

greeting = 'Hello'
extraction = 100
letter = greeting[extraction]
p letter
letter ||= 'Not found'
p letter


greeting = 'Hello'
extraction = 4
letter = greeting[extraction]
p letter
letter ||= 'Not found'
p letter
