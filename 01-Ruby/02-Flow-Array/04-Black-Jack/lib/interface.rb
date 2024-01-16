require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card
player_choice = "y"
playerScore = 0
bankScore = pick_bank_score

while (player_choice == "y" || player_choice == "yes")

  puts 'Card? "y" or "yes" to get a new card'
  player_choice = gets.chomp

  if player_choice == 'y' || player_choice == "yes"

    playerCard = pick_player_card
    playerScore = playerScore + playerCard

    puts "#{state_of_the_game(playerScore, bankScore)} \n \n"
  end
end

result = end_game_message(playerScore, bankScore)

if result == "win" || result == "Black Jack"
  puts "You beat the bank! You win."
elsif result == "Push"
  puts "Draw!! Take your money back!"
else
  puts "You Lose!!"
end
