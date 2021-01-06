def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation = 'add')
  if operation == 'add'
    add(a, b)
  elsif operation == 'subtract'
    subtract(a, b)
  elsif operation == 'multiply'
    multiply(a, b)
  else
    'Hell no bro...'
  end
end

p calculator(5,2)
p calculator(5,2,'multiply')
p calculator(5,2,'subtract')
p calculator(5,2,'divide')

puts

def calculator(a, b, operation = 'add')
  if operation == 'add'
    "the result of adding is #{add(a, b)}"
  elsif operation == 'subtract'
    "the result of subtracting is #{subtract(a, b)}"
  elsif operation == 'multiply'
    "the result of multiplying is #{multiply(a, b)}"
  else
    'Hell no bro...'
  end
end

p calculator(5,2)
p calculator(5,2,'multiply')
p calculator(5,2,'subtract')
p calculator(5,2,'divide')
