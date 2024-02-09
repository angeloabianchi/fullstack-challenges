#require "csv"
#require "json"
#require "open-uri"

#CSV.foreach("test.csv") do |row|
  # p row       => ["Paris", "2211000", "Tour Eiffel"] \n ["Paris", "2211000", "Tour Eiffel"]
  # p row[0]    => "Paris"
  # p row[1]    => "2211000"
#  row.each do |col|
#    puts col
#  end
#end

#url = "https://api.github.com/users/ssaunier"
#file = open(url).read
#hash = JSON.parse(file)

#p hash



# --- above is the code that I found in the class and below the changes needed to request the jason file


require "json"
require "open-uri"
require "net/http"


url = "https://api.github.com/users/ssaunier"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)

if response.is_a?(Net::HTTPSuccess)
  hash = JSON.parse(response.body)
  # p hash            # return all json
  p hash["login"]     # return only the login => "ssaunier"
else
  puts "Error fetching data from the URL: #{response.message}"
end
