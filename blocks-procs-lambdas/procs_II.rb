def greeter
  puts "I'm inside the greeter method"
  yield
  puts "back in greeter now"
end

phrase = Proc.new do
  puts 'Inside the proc'
end

greeter(&phrase)
# proc can be passed to method as arg, even when no param is defined in the method with yield

hi = Proc.new {puts "Hi there"}
5.times(&hi)

# .call is a method available on proc objects - you can call proc on itself
# this is possible as proc is an object while a block is not, so not possible with a block
# proc does everything a block does but has added functionality since it's an object and doesn't disppear after it's executed

hi.call(&hi)
