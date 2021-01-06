# hashes as args can solve issue of args coming through in wrong order.
# e.g. ------

def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end
# simple program to calculate restaurant bill

# correct order:
p calculate_total_1(24.99, 0.18, 0.07)
# incorrect order:
p calculate_total_1(0.18, 0.07, 24.99)
# total is wrong because order was wrong
# using a hash as arg prevents this issue

bill = {tip: 0.18, price: 24.99, tax: 0.07}
new_bill = {tax: 0.07, tip: 0.18, price: 24.99}


def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

p calculate_total_2(bill)
p calculate_total_2(new_bill)
p calculate_total_2({tax: 0.05, tip: 0.30, price: 9.99})
p calculate_total_2(tax: 0.05, tip: 0.30, price: 9.99)
p calculate_total_2 tax: 0.05, tip: 0.30, price: 9.99

# curly braces are optional when passing hash to method as arg, when it is the last arg or only arg.
# as usual parentheses are also optional too! (but still advised for readability)
