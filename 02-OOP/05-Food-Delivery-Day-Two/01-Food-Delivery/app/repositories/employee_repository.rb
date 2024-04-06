require 'csv'
require_relative '../models/employee'

class EmployeeRepository
  attr_accessor :next_id, :csv_file_path
  attr_writer :employees

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @employees = []
    @next_id = 1
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    @employees
  end

  def all_riders
    @employees.select { |employee| employee.rider? }
  end

  def find(id)
    #@employees.select { |employee| employee.id == id }.first
    employee = @employees[id - 1]
    #p "employee repo - #{employee}"
    return employee
  end

  def find_by_username(username)
    @employees.select { |employee| employee.username == username }.first
  end

  private
  def load_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv_file_path, **csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:username] = row[:username].to_s
      row[:password] = row[:password].to_s
      row[:role] = row[:role].to_s
      new_employee= Employee.new(row)
      @employees << new_employee
      @next_id = row[:id]
    end
  end
end
