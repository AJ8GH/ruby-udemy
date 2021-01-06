spice_girls = {scary: 'Melanie Brown',
               sporty: 'Melanie Chisolm',
               baby: 'Emma Bunton',
               ginger: 'Geri Halliwell',
               posh: 'Victoria Beckham'}

p spice_girls
p spice_girls.to_a
p spice_girls.to_a.flatten

power_rangers = [[:red, 'Jason'], [:black, 'Zach'],
                 [:blue, 'Billy'], [:yellow, 'Trinny'],
                 [:pink, 'Kimberly']
               ]

p power_rangers
p power_rangers.to_h
p power_rangers.to_h.flatten
