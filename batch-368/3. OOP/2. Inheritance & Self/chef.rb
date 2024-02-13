class Chef

  attr_reader :name, :restaurant

  def initialize(name, restaurant)
    @name = name                # => String
    @restaurant = restaurant    # => Restaurant   (Object)
  end
end
