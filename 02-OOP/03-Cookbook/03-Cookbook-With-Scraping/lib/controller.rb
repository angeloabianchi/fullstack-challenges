#  TODO: Define your Controller Class here, to orchestrate the other classes
require_relative 'cookbook'
require_relative 'recipe'
require_relative 'view'
require "nokogiri"
require "open-uri"

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
    # 3. Ask user what is the rating
    recipe_rate = @view.ask_recipe_rate
    # 3. Ask user what is the prep_time
    recipe_prep_time = @view.ask_recipe_prep_time
    # 4. Create a Task with the given desc and name
    recipe = Recipe.new(recipe_name, recipe_desc, recipe_rate, false, recipe_prep_time)
    # 5. store it in the repo
    new_recipe = @cookbook.create(recipe)
  end

  def remove
    # 1. Ask user to choose the recipe that he/she want to delete
    remove_recipe = @view.ask_index_remove_recipe
    # 2. Remove from the cookbook
    @cookbook.destroy(remove_recipe - 1)
  end

  def import
    search_array = []
    # 1. Ask user to which ingredient would like to search
    ingredient = @view.ask_ingredient_to_search
    p "Looking for #{ingredient.upcase} recipes on the Internet..."
    # 2. Search for recipies with the ingredient
    url = "https://www.allrecipes.com/search?q=#{ingredient}"
    doc = Nokogiri::HTML.parse(URI.open(url).read, nil, "utf-8")
    doc.search('.card__content').first(5).each do |element|
      title = element.search('.card__title-text').text.strip
      description = element['data-tag']
      search_array << {name: title, description: description, rating: ''}
    end

    # 3.Display them in an indexed list and 4. Ask for an index
    index = @view.print_search_recipies_and_ask_index(search_array).to_i
    # 4. Find rate of the recipe
    recipe_url = doc.search("#mntl-card-list-items_#{index}-0")[0]["href"]
    rate = find_rating(recipe_url).to_i
    prep_time = find_prep_time(recipe_url).to_s
    new_recipe = Recipe.new(search_array[index - 1][:name], search_array[index - 1][:description], rate, false, prep_time)
    # 5. Add it to the Cookbook
    @cookbook.create(new_recipe)
  end

  def find_rating(url)
    doc = Nokogiri::HTML.parse(URI.open(url).read, nil, "utf-8")
    doc.search('#mntl-recipe-review-bar__rating_1-0').text.strip
  end

  def mark_as_done
    # 1. Ask user which recipe is done
    index = @view.ask_index_recipe_to_mark_done.to_i
    # 2. Find Recipe
    recipe = @cookbook.find(index)
    # 3. Change status to done and print
    recipe.recipe_done!
    list
  end

  def find_prep_time(url)
    doc = Nokogiri::HTML.parse(URI.open(url).read, nil, "utf-8")
    doc.search('.mntl-recipe-details__value').first.text.strip.match(/\d+/)[0].to_i
  end
end
