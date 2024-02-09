class Car                         # Um molde of how car are created
  # DATA
  def initialize(color, brand)
    @color = color                # <-- Instance Variable is always declared with @ signal (this case string)
    @brand = brand
    @engine_started = false       # this case a boolean
  end

  # BEHAVIORs
  def start
    puts "staring the car..."
    power_batteries
    access_fuel
    crank_engine
    @engine_started = true
  end

  def engine_started?
    return @engine_started
  end

  #def color
  #  return @color
  #end

  # Another short way to do the same "def color" as above is this:
  #attr_reader :color

  # If we want to update the color of the car we can use the code below:
  #attr_writer :color

  # If we want that the user can see and update the color (attr_reader + attr_writer) we can use the code below:
  attr_accessor :color

  # If we have to read different instances variables we can use like that:
  # attr_reader :color, :brand                    <-- it can be used with attr_writer and attr_accessor

  # Tudo abaixo do "private" nao fica acessivel ao usuario!! Usuario nao pode usar por exemplo red_car.power_batteries
  private
  def power_batteries
    puts "Powering Batteries"
  end

  def access_fuel
    puts "Accessing Fuel"
  end

  def crank_engine
    puts "Cranking engine"
  end
end


Car

red_car = Car.new("red", "Volkswagen")

red_car.start

puts "Is my car started?"
puts red_car.engine_started? ? "Yes" : "No"
puts "The color of my car is #{red_car.color}"

red_car.color = "green"
puts "The NEW color of my car is #{red_car.color}"

# In the terminal open the shell
# ➜  Classes & Instances git:(main) ✗ irb
# [1] pry(main)> load 'car.rb'
# => true
# [2] pry(main)> Car
# => Car
# [3] pry(main)> first_car = Car.new("blue")      <-- creating an Instance of the class Car
# => #<Car:0x00007f89d6c30980 @color="blue", @engine_started=false>     <-- Instance created
# [4] pry(main)> first_car.start
# => true
# [5] pry(main)> first_car
# => #<Car:0x00007f93634c2b80 @color="blue", @engine_started=true>
