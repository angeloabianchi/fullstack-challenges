require_relative "restaurant"

class GastronomicRestaurant < Restaurant

  attr_reader :name, :city, :capacity, :category, :stars

  def initialize(name, city, capacity, category, stars)
    # STATE
    # super(variables)   <-- keyword to call the same "initialize" from the SuperClass
    super(name, city, capacity, category)

    @stars = stars
  end

  def print_booked_clients
    puts "- You cannot see who made a reservation on Toujou!!"
  end
end
