class SessionsView
  def ask_username
    puts "Enter username: "
    gets.chomp
  end

  def ask_password
    puts "Enter password: "
    gets.chomp
  end

  def welcome
    puts "Welcome to Food Delivery APP"
  end

  def invalid_credentials
    puts "Invalid Credentials! Please try again!"
  end
end
