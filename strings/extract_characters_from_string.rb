story = 'Once upon a time in a land far, far away'

p 'Brackets'
p story[2,12]
p story[-1..-5]
p story[-8,8]

puts

p 'Slice'
p story.slice(3)
p story.slice(3,4)
p story.slice(3..10)
p story.slice(3...10)
p story

puts
p story.slice!(3..10)
p story

puts
story = 'Once upon a time in a land far, far away'

puts
p story[100]

puts
p 'Negative extraction'
p story[-3,3]
p story[-3,5]
p story[-3,1]
p story[-3,2]
p story[-7,7]

puts
p story[20..-1]


puts
p story[0, story.length]

p story.length
p story [20..1000]
p story[20,1000]
p story.slice(20,1000)
p story.slice(20..1000)
