require "json"
require "rest-client"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"
repos = JSON.parse(response)
repos = repos.take(10)
#repos = repos.reject.with_index { |element, index| index > 9 }

repos.each do |id|
  response = RestClient.get "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
  repos = JSON.parse(response)
  Post.create(title: repos["title"], votes: repos["score"])
end
