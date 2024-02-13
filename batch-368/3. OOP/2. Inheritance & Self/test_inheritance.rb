require_relative "fastfood_restaurant"
require_relative "gastronomic_restaurant"

burguer_king = FastfoodRestaurant.new("Burguer King", "Barcelona", 150, "Hamburgueria", 5)

toujou = GastronomicRestaurant.new("Toujou", "Madrid", 60, "Gastronomia Atomica", 2)


puts "The restaurante #{burguer_king.name} is now #{burguer_king.open? ? "open" : "closed"}"

puts "The restaurante #{toujou.name} is now #{toujou.open? ? "open" : "closed"}"

puts toujou.name
toujou.book("Dinga")
toujou.print_booked_clients

puts burguer_king.name
burguer_king.book("Bianco")
burguer_king.print_booked_clients
