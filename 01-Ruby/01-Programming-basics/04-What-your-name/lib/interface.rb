require_relative "compute_name"

# TODO: ask for the first name
puts 'What is your first name?'
firstName = gets.chomp

# TODO: ask for the middle name
puts 'What is your middle name?'
middleName = gets.chomp

# TODO: ask for the last name
puts 'What is your last name?'
lastName = gets.chomp

# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
fullName = compute_name(firstName, middleName, lastName).to_s
puts "Hello, #{fullName}"
