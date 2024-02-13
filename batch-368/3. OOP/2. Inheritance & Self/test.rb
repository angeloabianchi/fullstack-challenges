require_relative "restaurant"

vintao = Restaurant.new("Vintao", "Sao Paulo", 60, "brasileiro")

puts "#{vintao.name} is in #{vintao.city}."
puts "#{vintao.name} can host #{vintao.capacity}."

puts "Construction happening..."
vintao.capacity = 70
puts "Now, #{vintao.name} can host #{vintao.capacity} people!!!"
puts "The restaurante #{vintao.name} is now #{vintao.open? ? "open" : "closed"}"

p vintao
vintao.book("Angelo")
p vintao
