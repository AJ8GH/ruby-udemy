p [1,2,3] + [4,5,6]
p [1,2,3].concat([4,5,6])

def custom_concat(a1,a2)
  a2.each {|x| a1 << x}
  a1
end
p custom_concat([2,4,6],[8,10,12])
