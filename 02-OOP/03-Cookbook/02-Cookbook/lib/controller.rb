#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'cookbook'
require_relative 'recipe'
require_relative 'view'

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    list = @cookbook.all
    @view.print_recipies(list)
  end

  def add
    # 1. Ask user what is the name
    recipe_name = @view.ask_recipe_name
    # 2. Ask user what is the desc
    recipe_desc = @view.ask_recipe_description
    # 3. Create a Task with the given desc and name
    recipe = Recipe.new(recipe_name, recipe_desc)
    # 4. store it in the repo
    new_recipe = @cookbook.create(recipe)
  end

  def remove
    # 1. Ask use to choose the recipe that he/she want to delete
    remove_recipe = @view.ask_index_remove_recipe
    # 2. Remove from the cookbook
    @cookbook.destroy(remove_recipe)
  end
end
