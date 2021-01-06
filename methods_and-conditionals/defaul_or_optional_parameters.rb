# all default/optional params must be at the end of the list of arguments, or will get argument error

def phone(number, int_code = '44', area_code = '20')
  "Calling #{int_code}-#{area_code}-#{number}"
end

puts phone('8274754', '5', '101')

puts phone('7274-4169')
