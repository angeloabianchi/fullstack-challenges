puts "Choose the mode (read / write / exit)"
action = gets.chomp

#if action == "read"
#  puts "Entering read mode..."
#elsif action == "write"
#  puts "Entering read mode..."
#elsif action == "exit"
#  puts "Good bye!"
#else
#  puts "No action recognized. Exiting the program!"
#end

case action
when "read"
  puts "Entering read mode..."
when "write"
  puts "Entering write mode..."
when "exit"
  puts "Good bye!"
else
  puts "No action recognized. Exiting the program!"
end
