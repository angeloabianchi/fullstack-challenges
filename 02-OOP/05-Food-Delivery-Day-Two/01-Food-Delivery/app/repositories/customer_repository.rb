require_relative '../models/customer'

class CustomerRepository
  attr_accessor :next_id, :csv_file_path
  attr_writer :customers

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @customers = []
    @next_id = 1
    load_csv if File.exist?(@csv_file_path)
  end

  def create(customer)
    customer.id = @next_id + 1
    @next_id += 1
    @customers << customer
    save_csv
  end

  def all
    @customers
  end

  def find(id)
    #customer = @customers.select { |customer| customer.id == id }.first
    customer = @customers[id - 1]
    #p "#{customer}"
    return customer
  end

  private
  def load_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row, header_converters: :symbol }

    CSV.foreach(@csv_file_path, **csv_options) do |row|
      row[:id] = row[:id].to_i
      row[:name] = row[:name].to_s
      row[:address] = row[:address].to_s
      new_cus = Customer.new(row)
      @customers << new_cus
      @next_id = row[:id]
    end
  end

  def save_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

    CSV.open(@csv_file_path, 'wb', **csv_options) do |csv|
      csv << ['id', 'name', 'address']
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end
end
