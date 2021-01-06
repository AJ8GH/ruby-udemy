market = {garlic: '3 cloves', tomatoes: '5 batches', milk:'10 gallons'}
kitchen = {bread: '2 loaves', yogurt: '20 cans', milk: '100 gallons'}

p market.merge(kitchen)
# if there's a dupplicate key, the argument one is the one that's kept
p kitchen.merge(market)

puts

# not overwritten :::
p kitchen
p market

# unless you use bang merge :::

kitchen.merge!(market)
p kitchen
p market

puts

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each {|k, v| new_hash[k] = v }
  new_hash
end

p custom_merge(kitchen, market)
p custom_merge(kitchen, market) == kitchen.merge(market)
