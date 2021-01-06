class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Night of the Living Dummy", "R.L. Stein", 100)
p goosebumps

class Book
  def read
    1.step(@pages, 10) { |page| puts "Reading page #{page}..."}
    puts "Done! #{@title} was a great read!"
  end
end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
p animal_farm.read

# our monkey patch becomes available on any object from that class,
# no matter when it was created

p goosebumps.read
