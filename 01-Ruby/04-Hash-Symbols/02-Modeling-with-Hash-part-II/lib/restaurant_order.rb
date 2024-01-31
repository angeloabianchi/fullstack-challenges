DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

MEALS = {
  'Cheesy Combo' => ['Cheese Burger', 'Sweet Potatoes', 'Lemonade'],
  'Veggie Combo' => ['Veggie Burger', 'Sweet Potatoes', 'Iced Tea'],
  'Vegan Combo' => ['Vegan Burger', 'Salad', 'Lemonade']
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  total_calories = 0
  orders.each do |item|
    if DISHES_CALORIES[item]
      total_calories = total_calories + DISHES_CALORIES[item]
    else
      MEALS[item].each do |combo_item|
        total_calories = total_calories + DISHES_CALORIES[combo_item]
      end
    end
  end

  p total_calories
end
