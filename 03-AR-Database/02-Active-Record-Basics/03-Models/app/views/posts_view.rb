class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def print_posts(list)
    list.each do |post|
      p "#{post.id} - #{post.title} - #{post.votes} votes"
    end
  end

  def ask_for_title
    puts "Title?"
    gets.chomp
  end

  def ask_for_url
    puts "URL?"
    gets.chomp
  end

  def ask_for_id
    puts "post id?"
    gets.chomp
  end
end
