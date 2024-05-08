class Post < ActiveRecord::Base
  belongs_to :user
  require "uri"

  # TODO: Add some validation
  validates :user, presence: true
  validates :title, presence: true, length: { minimum: 5 }, uniqueness: { case_sensitive: false }
  validates :url, presence: true, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
end
