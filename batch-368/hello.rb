puts "What hour is it?"

hour = gets.chomp.to_i

if hour < 12
  puts "Bom dia"
elsif hour >= 20
  puts "Boa noite"
elsif hour >= 12
  puts "boa tarde"
end
