# An Album class that stores an array of songs
class Album
  include Enumerable

  # An array of songs. Each song is a string.
  attr_reader :songs

# Creates a new Album instance with an empty song array.
  def initialize
    @songs = []
  end

  # Adda song to the Album object's songs array.
  def add_song(song)
    songs << song
  end

  # Yield each song in the album to a block.
  def each
    songs.each { |song| yield song }
  end
end

thriller = Album.new
thriller.add_song('Thriller')
thriller.add_song('Billie Jean')
p thriller.songs

# to generate documentation with rdoc
# go to terminal, navigate to folder of the file you want to document
# run :::
# rdoc filename.rb
# so here rdoc album.rb
# check the folder in finder
# doc folder should be newly created in there
# open index.html in chrome
# we can then click on the classes we've defined and look at the documentation
# we can see the instance methods, public class methods, and attributes /
# instance variables we've defined.

# to add comments to our documentation,
# just comment above what it is we are describing
# before all the classes, attr and methods were undocumented.
# now after commenting, 0 are undocumented.

# Bar on the left can be used for navigating the page.
