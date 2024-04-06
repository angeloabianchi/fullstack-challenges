require_relative '../repositories/meal_repository'
require_relative '../repositories/order_repository'
require_relative '../repositories/employee_repository'
require_relative '../repositories/customer_repository'
require_relative '../models/order'
require_relative '../views/orders_view'

class OrdersController
  attr_accessor :order_repository, :new_order
  attr_reader :meal_repository, :customer_repository, :employee_repository

  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @employee_repository = employee_repository
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @order_repository = order_repository
    @view = OrdersView.new
  end


  def add
    meal_index = @view.ask_meal_index.to_i
    meal = @meal_repository.find(meal_index)

    customer_index = @view.ask_customer_index.to_i
    customer = @customer_repository.find(customer_index)

    employee_index = @view.ask_employee_index.to_i
    employee = @employee_repository.find(employee_index + 1)

    @new_order = Order.new(meal: meal, customer: customer, employee: employee, delivered: false)
    @order_repository.create(@new_order)
  end

  def list_undelivered_orders
    un = @order_repository.undelivered_orders
    un.each do |order|
      puts "Customer: #{order.customer.name}, Meal: #{order.meal.name}, Employee: #{order.employee.username}"
    end
  end

  def list_my_orders(employee)
    orders = @order_repository.undelivered_orders.select { |order| order.employee == employee }
    orders.each do |order|
      puts "Customer: #{order.customer.name}, Meal: #{order.meal.name}, Employee: #{order.employee.username}"
    end
  end

  def mark_as_delivered(employee)
    undelivered_orders = @order_repository.undelivered_orders.select { |order| order.employee == employee }
    order_index = @view.ask_order_index.to_i
    order = undelivered_orders[order_index - 1]
    p "order_delivered? - #{order.delivered}"
    order.delivered = true
    p "order_delivered? - #{order.delivered}"
    @order_repository.save_csv # Assuming this method saves changes to the CSV file
  end
end
