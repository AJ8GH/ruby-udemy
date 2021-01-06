puts "This is the beginning!"

# load method loads the contents of the file we specify
# wherever we use the load method

load "end.rb" # must include extension

puts "Alright, that was successful"

load "./end.rb"
# ./ means in the current directory

if 8 > 5
  load "end.rb"
end
