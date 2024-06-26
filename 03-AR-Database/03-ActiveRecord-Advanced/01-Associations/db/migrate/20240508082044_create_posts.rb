class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string        :title
      t.string        :url
      t.integer       :votes, default: 0
      t.references    :user, foreign_key: true
      t.timestamps    null: false
    end
  end
end
