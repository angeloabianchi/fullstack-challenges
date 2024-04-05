
require_relative '../repositories/meal_repository'
require_relative '../views/meals_view'
require_relative '../models/meal'

class MealsController
  attr_accessor :meal_repository, :new_meal

  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def add
    meal_name = @view.ask_name.to_s
    meal_price = @view.ask_price.to_i
    @new_meal = Meal.new(name: meal_name, price: meal_price)
    @meal_repository.create(@new_meal)
  end

  def list
    list = @meal_repository.all
    list.each do |meal|
      puts "#{meal.id} - #{meal.name} - #{meal.price}"
    end
  end

end
