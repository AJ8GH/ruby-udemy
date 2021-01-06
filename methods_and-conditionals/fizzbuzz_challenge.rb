def fizzbuzz(n)
    i = 1
  while i <= n
  if i % 15 == 0
    puts "Fizzbuzz for #{i}"
  elsif i % 5 == 0
    puts "Buzz for #{i}"
  elsif i % 3 == 0
    puts "Fizz for #{i}"
  else
    puts i
  end
    i += 1
  end
end

fizzbuzz(150)

# iterate from 1 to n
# if n is divisible by 3 output fizz
# if n is divisible by 5, output buzz
# if n is divisible by both 3 and 5, output fizzbuzz
