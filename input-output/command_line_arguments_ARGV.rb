# arguments given to ruby program whenever it is run from the command line,
# receives them in a special array referrenced with the name ARGV

ARGV.each do |argument|
  number = argument.to_i
  puts "the square of #{number} is #{number ** 2}"
end
