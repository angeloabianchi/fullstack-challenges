# TODO: Write a seed
require "faker"
5.times do |i|
  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email
  )

  rand(5..10).times do |j|
    post = Post.new(
      title: Faker::Hacker.say_something_smart,
      url: Faker::Internet.url,
    )
    post.user = user
    post.save
  end

  user.save
end
