def rate_my_food(food)
  case food.capitalize
  when 'Steak' then 'Pass the steak sauce!'
  when 'Sushi' then 'Pass the wasabi!'
  when 'Pizza' then 'Great choice, my favourite!'
  when 'Tacos', 'Burritos', 'Quesadillas' then 'Cheesy and filling! Perfect Combo!'
  when 'Tofu', 'Nut roast' then 'Disgusting, yuck!'
  else "I don't know about that food!"
  end
end

puts rate_my_food('pizza')
