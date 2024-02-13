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

  def print_recipies(recipies)
    recipies.each_with_index do |recipe, index|
      # p "#{index} - Name: #{recipe[:name]}     Description: #{recipe[:description]}"
      p "#{index} - Name: #{recipe.name}     Description: #{recipe.description}"
    end
  end

  def ask_index_remove_recipe
    puts "Choose a number to delete the recipe:"
    gets.chomp.to_i
  end
end
