require_relative '../models/customer'
require_relative '../repositories/customer_repository'
require_relative '../views/customers_view'

class CustomersController

  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def add
    new_name = @view.ask_cus_name
    new_address = @view.ask_cus_address
    @new_cus = Customer.new(name: new_name, address: new_address)
    @customer_repository.create(@new_cus)
  end

  def list
    @customer_repository.all.each do |customer|
      puts "#{customer.id} - #{customer.name} - #{customer.address}"
    end
  end

end
