File.open("newFile", "w")

File.rename("newFile", "somethingBetter.txt")

File.delete("somethingBetter.txt")
# returns error if file doesn't exist

File.delete("somethingBetter.txt") if File.exist?("somethingBetter.txt")
# this if statement solves this problem
