require "json"

# TODO - let's read/write data from beatles.json
#filepath = "data/beatles.json"
filepath = "data/beers.json"

file = File.read(filepath)    # <-- return a string

#data = JSON.parse(file)      # <-- return a Ruby Object

beers = [
  { name: 'Bela Horzontina', appearance: 'Duvidosa', origin: 'Esquisita' },
  { name: 'Cacilds', appearance: 'Variada', origin: 'Mineira eu acho' }
]

File.open(filepath, 'wb') do |file|       # <-- this also remove everything from the file and re-write.
  file.write(JSON.generate(beers))
end
