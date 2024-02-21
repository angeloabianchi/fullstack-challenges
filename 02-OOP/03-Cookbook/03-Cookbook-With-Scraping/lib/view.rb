# TODO: Define your View class here, to display elements to the user and ask them for their input
class View

  def ask_recipe_name
    puts "What's the name of the recipe?"
    gets.chomp
  end

  def ask_recipe_description
    puts "What's the description of the recipe?"
    gets.chomp
  end

  def ask_recipe_rate
    puts "What's the rate of the recipe?"
    gets.chomp.to_i
  end

  def ask_recipe_prep_time
    puts "What's the prep_time of the recipe?"
    gets.chomp
  end

  def print_recipies(recipies)
    recipies.each_with_index do |recipe, index|
      p "#{index + 1}. [#{recipe.done ? "x" : " "}] #{recipe.name} (#{recipe.rating} / 5) *Prep Time: #{recipe.prep_time} min*"
    end
  end

  def ask_index_remove_recipe
    puts "Choose a number to delete the recipe:"
    gets.chomp.to_i
  end

  def ask_ingredient_to_search
    puts "What ingredient would you like a recipe for?"
    gets.chomp
  end

  def print_search_recipies_and_ask_index(recipies)
    recipies.each_with_index do |recipe, ind|
      p "#{ind + 1}. #{recipe[:name]}"
    end
    p "Which recipe would you like to import? (enter index)"
    gets.chomp
  end

  def ask_index_recipe_to_mark_done
    p "Which recipe do you want to mark as done? (enter index)"
    gets.chomp
  end
end
