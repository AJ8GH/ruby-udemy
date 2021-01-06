age = 25
ticket = 'General Admission'
id = true

if age > 21 && ticket
  p 'Congratulations, welcome to the show!'
elsif ticket && id
  p 'ok you get in anyway'
end


budget = 5
price = 10
mood = 'happy'

if budget > 5 || price < 8 || mood == 'happy'
  p "I'm going to buy the item"
end
