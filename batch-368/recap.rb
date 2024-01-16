# Initialize

puts "What's your age?"

age = gets.chomp.to_i

if age >= 16
  puts "You can vote!"
else
  puts "Wait a few more years..."
end
