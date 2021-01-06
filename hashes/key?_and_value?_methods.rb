cars = {toyota: 'camry', chevrolet: 'aveo',
        ford: 'F-150', kia: 'soul'}

p cars.key?(:ford)
p cars.key?(:kia)
p cars.key?(:ferarri)
p cars.key?("ford")

puts

p cars.value?('aveo')
p cars.value?('F-150')
p cars.value?('fiesta')
p cars.value?(298)

puts

# previously has_value? and has_key? were used
# but they are being deprecated. so use the first 2.
