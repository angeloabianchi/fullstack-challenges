require_relative "coach_answer"
#require_relative "coach_answer_enhanced"
# TODO: Implement the program that makes you discuss with your coach from the terminal.

answer = nil

while answer != '' do
  puts "Say something to your couch!"
  message = gets.chomp

  #answer = coach_answer(message)
  answer = coach_answer_enhanced(message)

  puts "#{answer}\n"
  puts "\n\n"
end
