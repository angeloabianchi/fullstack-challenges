class Restaurant
  # TODO: add relevant accessors if necessary
  attr_accessor :average_rating
  attr_reader :city, :name

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @rates = []
  end

  # TODO: implement .filter_by_city and #rate methods
  def rate(new_rate)
    @rates << new_rate
    sum = 0
    @rates.each do |rate|
      sum = sum + rate
    end
    @average_rating = sum/@rates.size
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant| restaurant.city == city }
    # --------- SAME AS ABOVE ---------

    #restaurants.each do |restaurant|
    #  if restaurant.city == city
    #    selected_restaurants << restaurant
    #  end
    #end
  end
end
