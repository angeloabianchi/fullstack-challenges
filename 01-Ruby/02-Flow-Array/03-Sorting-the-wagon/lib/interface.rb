require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-2.7.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-2.7.5/String.html#method-i-chomp
studentList = []

puts "Type a student name:"
studentName = gets.chomp

while studentName != "" do
  studentList.push(studentName)

  puts "Type another student name or press enter to finish:"
  studentName = gets.chomp

end

puts "Congratulations! Your Wagon has #{studentList.count} students:"
sortedList = wagon_sort(studentList)
stringList = ""


if sortedList.count > 1
  i = 0
  while i < sortedList.count - 2
    stringList = "#{stringList}#{sortedList[i].to_s}, "
    i = i + 1
  end

  stringList = "#{stringList}#{sortedList[-2]} and #{sortedList.last.to_s} "

  puts stringList
else
  puts sortedList[0].to_s
end

# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
wagon_sort(studentList)
