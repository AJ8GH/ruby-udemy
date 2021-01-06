def pass_control_on_condition
  puts 'Inside the method'
  if block_given? # this means that not passing the method a block to yield will now NOT result in an error
    yield
  end
  puts 'Back inside the method'
end

pass_control_on_condition # if we had a block here it would yield run with the block thanks to our if statement and block_given?
# without the block we just get the method running as if the block_given? and yield aren't there at all.
#  syntax

def method
  p 'hey'
  if block_given?
    yield
  end
  p '98'
end

method
