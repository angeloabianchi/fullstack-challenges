beatles = ["paul", "ringo", "rayan"]
# Index      0        1        2
p beatles

puts beatles[2]

#beatles.push("john")
beatles << "john"

#beatles.insert(1, "john")

beatles[1] = "george"

beatles.delete_at(2)    # del by the index of the array
beatles.delete("john")  # del by the value

beatles.each do |artist|
  puts "#{artist} is in the Beatles!"
end

beatles.each { |artist| puts "#{artist} is in the Beatles!"}

p beatles
