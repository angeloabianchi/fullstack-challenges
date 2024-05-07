class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    # TODO: your code here to create the posts table
    create_table :posts do |post|
      post.string   :title
      post.string   :url
      post.timestamps
    end
  end
end
