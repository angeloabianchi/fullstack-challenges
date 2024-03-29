class Recipe
  attr_reader :name, :description, :rating
  attr_accessor :done, :prep_time

  def initialize(name, description, rating, done, prep_time)
    @name = name
    @description = description
    @rating = rating
    @done = done
    @prep_time = prep_time
  end

  def recipe_done!
    @done = true
  end
end
