salaries = {director: 100_000, producer: 200_000,
            ceo: 3_000_000, assistant: 200_000}

salaries.each_key {|position|
  puts "Employee Record: -----"
  puts "#{position}"}

  salaries.each_value {|salary| puts "The next employee earns #{salary}"}

# exercise
def key_arr(hash)
  keys = []
  hash.each {|k,v| keys << k}
  keys
end

p key_arr(salaries)

def value_arr(hash)
  values = []
  hash.each {|k,v| values << v}
  values.uniq
end

p value_arr(salaries)
