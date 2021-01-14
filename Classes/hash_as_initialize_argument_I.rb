class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, age, occupation, hobby, birthplace)
    @name = name
    @age = age
    @occupation = occupation
    @hobby = hobby
    @birthplace = birthplace
  end
end

senator = Candidate.new('Mr. Smith', 53, 'Banker', 'Fishing', 'Kentucky')
p senator.occupation
p senator.hobby
p senator.name

puts

#  all works fine... unless we forget order and pass args in wrong order :
congressman = Candidate.new('Kentucky', 53, 'Fishing', 'Banker', 'Mr. Smith')
p congressman.occupation
p congressman.birthplace
p congressman.hobby
p congressman.name

puts
# instead if we use a hash the order doesn't matter

class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details = {}) # empty hash default arg
    # can still get an arg error if we forget to include the hash argument or give wrong no. of arguments.
    # To prevent this we can give default arg of empty hash
    # now leaving out the hash arg will return nil values instead of error
    defaults = {age: 35, occupation: 'Candidate', hobby: 'Running for office', birthplace: 'USA'}
    defaults.merge!(details) # overwrites any values in defualt if the user passes in their own value
    # if they missspell or leave out an arg we won't get a nil or an error, we'll have the default values

    @name = name
    @age = defaults[:age] # changing details[:key] to defaults[:key]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = {age: 53, occupation: 'Banker', hobby: 'Fishing', birthplace: 'Kentucky'}
mayor = Candidate.new('Mr. Jones', info)
p mayor.occupation
p mayor.hobby
p mayor.age
p mayor.birthplace
p mayor.name
# reduces chance of error due to argument order.
# also means any missing args will return as nil, rather than a straight error

senator = Candidate.new('Mr.Smith', hobby: 'Horror movies', occupation: 'Popcorn vendor')
# we can leave out curly braces from hash when it is given as the last argument
# watch for typos - if misspell the hash keys, the variables will become nil
p senator.occupation
p senator.hobby
p senator.age
p senator.birthplace
#  no more nils - since we have created a security feature with the defaults Hash.
#  reducing the chance of an error or a nil value occuring.
