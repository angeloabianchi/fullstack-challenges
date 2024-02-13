require_relative "restaurant"

class FastfoodRestaurant < Restaurant               # <-- sintax to get the methods from Restaurant class

  attr_reader :name, :city, :capacity, :category, :prep_time

  def initialize(name, city, capacity, category, prep_time)
    # STATE
    # super   <-- keyword to call the same "initialize" from the SuperClass
    super(name, city, capacity, category)

    @prep_time = prep_time
  end

  def open?
    return (super) || (Time.now.hour >= 10 && Time.now.hour < 17) ? true : false
    # this super is taking the condition from the method open? from the SuperClass (Time.now.hour >= 19 && Time.now.hour < 22)
  end
end
