capitals = {alabama: 'Montgomery', alaska: 'Juneau',
            arizona: 'Pheonix', arkansas: 'Little Rock'}

capitals.each do |state, capital|
  puts "Quering hash..."
  puts "The capital of #{state.capitalize} is #{capital}"
end

  puts
# each_pair is exactly the same as each for a hash - stick with each, no need to ever use each_pair

# using 1 parameter results in getting the key and value in an array
capitals.each do |guess|
  puts 'Querying Hash...'
  p guess
end

  puts

capitals.each { |guess| p guess[0] }
  puts

capitals.each { |guess| p guess[1] }
  puts

capitals.each { |state, capital| p state}
  puts

capitals.each { |state, capital| p capital}
