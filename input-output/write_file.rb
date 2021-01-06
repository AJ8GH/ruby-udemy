# second arg is optional, if left out,
# the default is "r" which is read, therefore not needed when reading
# "w is for write"

File.open("myFirstFile.txt", "w") do |file|
  file.puts "I'm creating this from Ruby!"
  file.write "No line break here!"
  file.puts "Pretty cool!"
end

# .puts adds line break as per and .write is puts without the linebreak

# this "w" argument for write will overwrite all of the
# contents of the file if the file name already exists

# if we don't want to overwrite, we can append text to the end
# of an existing file with the "a" arg (for append)

File.open("myFirstFile.txt", "a") do |file|
  file.puts "This will be appended to the end"
  file.print "And one more line with file.print"
  file.write "And another line with file.write"
end
