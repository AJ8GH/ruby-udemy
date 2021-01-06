# any
p [1, 3, 5, 7, 2].any? do |n|
  n.even?
end

p [1,3,5,7,9].any? {|n| n.even?}

# all

p [1,3,5,7,9].all? {|n| n.odd?}

p [1,3,5,7,2].all? {|n| n.odd?}
