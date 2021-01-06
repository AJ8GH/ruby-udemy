string = 'String'
p string.respond_to?(:to_i)
p string.respond_to?(:odd)

puts

num = 1000
  p num.respond_to?(:next)
  p num.respond_to?(:odd?)
  p num.respond_to?(:respond_to?)
  p num.respond_to?(:class)
  p num.respond_to?(:upcase)
  p num.respond_to?(:length)

puts

if num.respond_to?(:next)
  p num.next
end

if num.respond_to?(:length)
  p num.length
else
  puts 'Invalid method for integer class.'
end
