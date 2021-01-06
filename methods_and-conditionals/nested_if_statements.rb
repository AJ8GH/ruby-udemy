def meal_plan(time_of_week, time_of_day)
  if time_of_week == 'weekday'
    if time_of_day == 'breakfast'
      'cereal'
    elsif time_of_day == 'lunch'
      'Sandwich'
    elsif time_of_day == 'dinner'
      'Chicken Nuggets'
    else
      'Fruit'
    end
  elsif time_of_week == "weekend"
    if time_of_day == 'breakfast'
      'French Toast'
    elsif time_of_day == 'lunch'
      'BBQ Chicken Pizza'
    elsif time_of_day == 'dinner'
      'Steak'
    else
      'Crumpets'
    end
  end
end

p meal_plan('weekend', 'dinner')
