# spaceship operator returns 1 of 4 possible values
# -1, 1, 0, nil

p 5  <=> 5 # equal          -- returns 0
p 5  <=> 10 # left smaller  -- returns -1
p 10 <=> 5 # left bigger    -- returns 1
p 5 <=> [1,2,3] # wrong item types -- nil

# useful for designing a custom sort algorithm

p [1,2,3]       <=> [1,2,3] # 0
p [1,2,3]       <=> [1,2,5] # -1
p [1,2,3]       <=> [1,2,3,4] # -1
p [39576,987,9] <=> [1,2,3,4,5]
