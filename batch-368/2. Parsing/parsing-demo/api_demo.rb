#require "json"
#require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
#url = "https://api.github.com/users/ssaunier"


#user_serialized = open(url).read

#puts user_serialized



# ------- the way above it wasn't working when running the command ruby api_demo.rb in the terminal ---------

require "json"
require "net/http"
require "uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/ssaunier"
uri = URI.parse(url)

response = Net::HTTP.get_response(uri)

if response.is_a?(Net::HTTPSuccess)
  user_serialized = response.body
  user_data = JSON.parse(user_serialized)
  p user_data["blog"]
else
  puts "Failed to fetch data from GitHub API. HTTP Status: #{response.code}"
end
