require 'csv'
require_relative '../models/order'
require_relative "../repositories/customer_repository"
require_relative "../repositories/employee_repository"
require_relative "../repositories/meal_repository"

class OrderRepository
  attr_accessor :next_id, :csv_file_path
  attr_reader :customer, :meal_repository, :customer_repository, :employee_repository

  def initialize(csv_file_path, meal_repository, customer_repository, employee_repository)
    @csv_file_path = csv_file_path
    @orders = []
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @next_id = 0
    load_csv if File.exist?(@csv_file_path)
  end

  def create(order)
    order.id = @next_id + 1
    @next_id += 1
    @orders << order
    save_csv
  end

  def undelivered_orders
    @orders.select { |order| order.delivered == false}
  end


  def save_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

    CSV.open(@csv_file_path, 'wb', **csv_options) do |csv|
      csv << ['id', 'delivered', 'meal_id', 'customer_id', 'employee_id']
      @orders.each do |order|
        csv << [order.id, order.delivered?, order.meal.id, order.customer.id, order.employee.id]
      end
    end
  end

  private
  def load_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv_file_path, **csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:delivered] = row[:delivered] == "true"
      row[:meal] = @meal_repository.find(row[:meal_id].to_i)
      row[:customer] = @customer_repository.find(row[:customer_id].to_i)
      row[:employee] = @employee_repository.find(row[:employee_id].to_i)
      new_order = Order.new(row)
      @orders << new_order
      @next_id = row[:id]
    end
  end



end
