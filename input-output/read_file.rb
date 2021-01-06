# Ruby has a class called file
# File has a method called open

File.open("novel.txt")
# enter the name of the file as a string.
# this parses the contents of the file as an array
# you can then iterate over this array.
# works only in terminal, not atom-runner

File.open("novel.txt").each { |line| puts line }

# when this .rb file is run in terminal
# the above line will output the text from the txt file
