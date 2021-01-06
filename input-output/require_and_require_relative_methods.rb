# if you want to import functionality, e.g. class, method, etc.
# require or require relative are better suited
# load is better for loading files

puts "This is the beginning!"
require "./end.rb"

# require looks in ruby default directory, so ./ is needed to specify current directory
# unlike load, require will not execute more than once
# this is why it's best suited to loading features like classes modules and methods

# e.g. ---- no output ----
require "./end.rb"
require "./end.rb"
require "./end.rb"
require "./end.rb"

require_relative "end.rb"
# same as require but looks in same directory as the current File is in

# navigating through directories ::: require_relative "dir1/dir2/dir3...etc.../file.ext"
# ---- e.g. ----
puts "This is the beginning!"
require_relative "a/b/epilogue.rb"
require_relative "end.rb"
