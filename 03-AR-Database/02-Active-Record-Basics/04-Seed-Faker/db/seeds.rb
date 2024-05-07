require "faker"
# TODO: Write a seed to insert 100 posts in the database
100.times do |i|
  post = Post.new(
    title: Faker::ChuckNorris.fact,
    url: Faker::Internet.url,
    votes: Faker::Number.number(digits: 1)
  )
  post.save
end
