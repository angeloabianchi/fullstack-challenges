require 'csv'
require_relative '../models/meal'

class MealRepository
  attr_accessor :next_id, :csv_file_path
  attr_writer :meals

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @meals = []
    @next_id = 0
    load_csv if File.exist?(@csv_file_path)
  end

  def create(meal)
    meal.id = @next_id + 1
    @next_id += 1
    @meals << meal
    save_csv
  end

  def all
    return @meals
  end

  def find(id)
    @meals[id - 1]
  end


  private
  def load_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv_file_path, **csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:name] = row[:name].to_s
      row[:price] = row[:price].to_i
      new_meal = Meal.new(row)
      @meals << new_meal
      @next_id = row[:id]
    end
  end

  def save_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

    CSV.open(@csv_file_path, 'wb', **csv_options) do |csv|
      csv << ['id', 'name', 'price']
      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end

end
