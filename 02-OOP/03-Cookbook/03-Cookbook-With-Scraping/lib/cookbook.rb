# TODO: Implement the Cookbook class that will be our repository
require "csv"

class Cookbook


  def initialize(csv_file_path)
    @recipes = []
    @csv_file_path = csv_file_path
    load_csv
  end

  def create(recipe)
    @recipes << recipe
    save_csv
  end

  def all
    return @recipes
  end

  def find(index)
    @recipes[index - 1]
  end

  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
    # 1. Save SVG
    save_csv
  end

  private
  def load_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

    CSV.foreach(@csv_file_path, **csv_options) do |row|
      name = row['Name'].to_s
      description = row['Description'].to_s
      rating = row['Rating'].to_i
      done = row['Done']
      prep_time = row['PrepTime']
      row_recipe = Recipe.new(name, description, rating, done === "Yes" ? true : false, prep_time)
      @recipes << row_recipe
    end
  end

  def save_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    CSV.open(@csv_file_path, 'wb', **csv_options) do |csv|
      csv << ['Name', 'Description', 'Rating', 'Done', 'PrepTime']
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.rating, recipe.done ? "Yes" : "No", recipe.prep_time]
      end
    end
  end


end
