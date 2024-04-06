
require_relative '../views/sessions_view'

class SessionsController
  attr_accessor :employee_repository

  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  def signin
    #1. perguntar o username
    username = @view.ask_username
    #2. perguntar o password
    password = @view.ask_password
    #3. encontrar o employee com o username e verificar se as credenciais correspondem
    employee = @employee_repository.find_by_username(username)
    #4. retornar a instancia do usuario que fez o login, se confirmada as credenciais
    if employee && employee.password == password
      @view.welcome
      return employee
    #5. username inexistente ou password invalida, retornar mensagem de erro de credenciais e chamar o signin novamente ate usuario ser encontrado
    else
      @view.invalid_credentials
      signin
    end


  end
end
