# Variables
tries = 0;
rand_number = 123                 # Random Number

# Ask the user for a number
puts "Qual o numero aleatorio?"

number = gets.chomp               #gets.chomp is a variable reserved to receive a terminal input

if number.to_i == rand_number
  puts "acerto, mizeravi!"
else
  tries += 1
  puts "voce tentou #{tries} vezes e errou todas!"
end
