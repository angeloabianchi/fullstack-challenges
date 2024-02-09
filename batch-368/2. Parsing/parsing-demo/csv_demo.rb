require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/new_beers.csv"
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# ------- READ -------
#CSV.foreach(filepath, **csv_options) do |row|
  #1.
  #print "Rock is "
  #p row

  #2
  #row.each do |col|
  #  print "col is"
  #  p col
  #end

  #3
  #puts "The artist's name is #{row[0]}!"
#  puts "The artist's name is #{row["First Name"]}!"
#end


# ------ STORE NEW DATA IN CSV File -------

# 1
#CSV.open(filepath, 'wb', **csv_options) do |csv|          # wb --> write binary (borra todo el archivo y empieza del 0, por eso he cambiado el filepath to data/new_beers.csv
#  csv << ['Name', 'Appearance', 'Origin']
#  csv << ['Bela Horizotina', 'Duvidosa', 'Esquisita']
#end

beers = [
  { name: 'Bela Horzontina', appearance: 'Duvidosa', origin: 'Esquisita' },
  { name: 'Cacilds', appearance: 'Variada', origin: 'Mineira eu acho' }
]

CSV.open(filepath, 'wb', **csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << beer.values
    #csv << [beer[:name], beer[:appearance], beer[:origin]]
  end
end
