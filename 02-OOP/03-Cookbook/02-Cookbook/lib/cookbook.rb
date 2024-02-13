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

  def destroy(recipe_index)
    @recipes.delete_at(recipe_index)
    # 1. Save SVG
    save_csv
  end

  private
  def load_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

    CSV.foreach(@csv_file_path, **csv_options) do |row|
      name = row['name'].to_s
      description = row['description'].to_s
      row_recipe = Recipe.new(name, description)
      @recipes << row_recipe
    end
  end

  def save_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    CSV.open(@csv_file_path, 'wb', **csv_options) do |csv|
      csv << ['Name', 'Description']
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end


end
