class MealsView
  def ask_name
    puts "Meal name?"
    gets.chomp
  end

  def ask_price
    puts "Meal price?"
    gets.chomp
  end

  #def print_meals(list)
  #  list.each do |meal|
      #p "#{meal.id}: #{meal.name} - #{meal.price}€"
  #    p "#{meal.name}"
  #  end
  #end
end
