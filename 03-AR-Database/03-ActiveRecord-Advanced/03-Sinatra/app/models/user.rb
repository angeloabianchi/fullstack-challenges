class User < ActiveRecord::Base
  has_many :posts
  require_relative "../../config/fake_mailer"

  # TODO: Add some validation
  validates :username, presence: true, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true
  # TODO: Add some callbacks
  before_validation :lower_username, :remove_spaces
  after_validation :welcome_email


  private

  def lower_username
    self.username = username.downcase unless username.nil?
  end

  def remove_spaces
    self.email = email.strip unless email.nil?
  end

  def welcome_email
    FakeMailer.instance.mail(email, @subject)
  end

end
