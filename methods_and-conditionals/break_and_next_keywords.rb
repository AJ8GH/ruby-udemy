# break
prizes = %w[pyrite pyrite pyrite pyrite gold pyrite pyrite gold pyrite]

i = 0
while i < prizes.length
  current = prizes[i]
  if current == 'gold'
    puts 'Yay! I found gold!'
    break
  else
    puts "#{current} is not gold!"
  end
i += 1
end

  puts

nums = [1,2,3,'hello',5,6,7,8]
nums.each do |n|
  if n.is_a?(Integer)
    puts "square of #{n} is #{n ** 2}"
  else
    puts "Hey! '#{n}' is not a valid number! I'm done with this nonsense."
    break
  end
end

  puts

# next
nums = [1,2,3,'hello',5,6,nil,7,8,[]]
nums.each do |n|
  unless n.is_a?(Integer)
    next
  else
    puts "The square of #{n} is #{n ** 2}"
  end
end
