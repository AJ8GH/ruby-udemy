# --- singleton method ----
# - only exists on one single instance of an object we instantiate from a class

class Player
  def play_game
    rand(1..100) > 50 ? 'Winner!' : 'Loser!'
  end
end

bob = Player.new
adam = Player.new

p bob.play_game
p adam.play_game

def adam.cheat # defining a method which will only be available on this object
  'Winner!'
end

p adam.play_game
p adam.cheat

puts

# we can actually name it play_game and it will overwrite the other method for Adam
# as usual Ruby looks for whatever is closest first, and since this method is on
# the object itself it will always be the one used.

def adam.play_game
  'Winner!'
end

p bob.play_game
p adam.play_game

# singleton_methods shows us the sgtlnmethods on that object
p adam.singleton_methods
p bob.singleton_methods

p adam.singleton_class
p bob.singleton_class

# a singleton_class is defined below the class itself
# and represents the object or instance of the class.
# it's where the singleton_methods are stored.

# can be useful for unit testing
# when we want certain objects to have a different functionality or behaviour
# to all the other objects in our class.
