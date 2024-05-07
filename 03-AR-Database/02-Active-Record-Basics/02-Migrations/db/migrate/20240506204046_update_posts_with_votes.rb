class UpdatePostsWithVotes < ActiveRecord::Migration[7.0]
  def change
    # TODO: your code here to update the posts table
    add_column :posts, :votes, :integer, default: 0
  end
end
