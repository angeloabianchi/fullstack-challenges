require 'sqlite3'
DB = SQLite3::Database.new("patients_doctors.sqlite")

rows = DB.execute("SELECT * FROM doctors;")

rows.each do |row|
  p row
end


puts '------------'

rows.each do |row|
  puts "Doctor: #{row[1]} #{row[2]} - Speciality: #{row[4]}"
end
