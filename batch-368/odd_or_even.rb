puts "What's the number?"

number = gets.chomp.to_i

#if number.even?
#  puts "It's even"
#else
#  puts "It's odd"
#end

puts number.even? ? "It's even" : "It's odd"
