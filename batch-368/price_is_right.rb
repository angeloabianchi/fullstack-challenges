computer_price = rand(1..5)

puts "What's the price?"

player_price = gets.chomp.to_i

#while computer_price != player_price
#  puts "Try again!"
#  player_price = gets.chomp.to_i
#end

until computer_price == player_price
  puts "Try again!"
  player_price = gets.chomp.to_i
end

puts "Congratulations! You will buy with no discout!"
