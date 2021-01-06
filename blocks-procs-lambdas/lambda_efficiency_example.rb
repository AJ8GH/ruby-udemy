def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end

p convert_to_euros(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)

puts

# instead we can use one method + 3 lambdas

def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

p convert(1000, "euros") { |dollars| dollars * 0.95 }
p convert(1000, "pesos") { |dollars| dollars * 20.67 }
p convert(1000, "rupees") { |dollars| dollars * 68.13 }
# second arg is unnecessary, merely a visual aid for us, but no purpose in the block

puts

# instead we can change our method to expect a lambda as an argument
def convert(dollars, currency_lambda) # & not needed when using lambda as a param, unlike procs
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

to_euros = lambda { |dollars| dollars * 0.95 }
to_pesos = lambda { |dollars| dollars * 20.67 }
to_rupees = lambda { |dollars| dollars * 68.13 }

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)

# can map with lambdas too

p [1000, 2000, 3000].map(&to_euros) # - still need & when passing a lambda to a method like map
p [1000, 2000, 3000].map(&to_pesos)
p [1000, 2000, 3000].map(&to_rupees)
