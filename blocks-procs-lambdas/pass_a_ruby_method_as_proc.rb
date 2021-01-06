# the long way :::
p %w[1 2 3].map {|n| n.to_i}

# the better way :::
p %w[1 2 3].map(&:to_i)
# method name must be a symbol and the & preceding it, as we're calling it as a proc
# any method can be called in this way

p [1,2,3,4,5].select(&:even?)
p [1,2,3,4,5].reject(&:odd?)
