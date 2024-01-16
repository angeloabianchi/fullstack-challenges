computer_coin = ["heads", "tails"].sample

puts "Guess the coin side"
player_coin = gets.chomp


verb = computer_coin == player_coin ? "won" : "lost"

puts "You #{verb}!"
