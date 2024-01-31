def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  calories = {
    "Hamburger" => 250,
    "Cheese Burger" => 300,
    "Veggie Burger" => 540,
    "Vegan Burger" => 340,
    "Sweet Potatoes" => 230,
    "Salad" => 15,
    "Iced Tea" => 70,
    "Lemonade" => 90
  }

  puts calories[burger]
  total_calories = calories[burger] + calories[side] + calories[beverage]

  return total_calories
end
