require_relative "restaurant"

vintao = Restaurant.new("Vintao", "Sao Paulo", 60, "brasileiro", "Bianco")

p "#{vintao.name}'s chef is #{vintao.chef.name}"

chef_name = vintao.chef
p chef_name     # This will print the Chef instance and not the name of the chef
# <Chef:0x00007f6cf2b50660 @name="Bianco", @restaurant=#<Restaurant:0x00007f6cf2b50750 @name="Vintao", @city="Sao Paulo", @capacity=60, @category="brasileiro", @chef=#<Chef:0x00007f6cf2b50660 ...>, @clients=[]>>

p chef_name.restaurant.name
