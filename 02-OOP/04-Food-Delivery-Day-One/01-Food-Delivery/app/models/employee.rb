class Employee
  attr_accessor :id
  attr_reader :username, :password, :role

  def initialize(attr = {})
    @id = attr[:id]
    @username = attr[:username]
    @password = attr[:password]
    @role = attr[:role]
  end
end
