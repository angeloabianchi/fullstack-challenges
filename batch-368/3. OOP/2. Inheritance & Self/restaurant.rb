require_relative "chef"

class Restaurant

  attr_reader :name, :city, :chef
  attr_accessor :capacity

  def initialize(name, city, capacity, category, chef_name)
    # STATE
    @name = name
    @city = city
    @capacity = capacity
    @category = category

    @chef = Chef.new(chef_name, self)      # => Chef
    # o self acima esta relacionado com a instancia que eu estou, ou seja, para criar o Chef, preciso do nome e de um restaurante. O restaurante vai estar relacionado com a instancia q estou criando. Nesse caso seria "vintao"
    @clients = []
  end
  # -------------------------------------------------
  # *class* method sao coisas gerais, ou seja, coisas que nao dependem de uma instancia. Ex: Quais sao todas as categorias de restaurante existentes?
  def self.categories         # <-- *CLASS* METHOD
    return ['burguer', 'italian', 'french']
  end

  # in the terminal use the irb command line
  #➜  2. Inheritance & Self git:(main) ✗ irb
  # [1] pry(main)> load 'restaurant.rb'
  # => true
  # [2] pry(main)> vintao = Restaurant.new("Vintao", "Sao Paulo", 60, "brasileiro")
  # => #<Restaurant:0x00007f2271fbe060
  # @capacity=60,
  # @category="brasileiro",
  # @city="Sao Paulo",
  # @clients=[],
  # @name="Vintao">
  # [3] pry(main)> vintao.categories
  # NoMethodError: undefined method `categories' for #<Restaurant:0x00007f2271fbe060 @name="Vintao", @city="Sao Paulo", @capacity=60, @category="brasileiro", @clients=[]>
  # from (pry):3:in `__pry__'
  # [4] pry(main)> Restaurant.categories
  # => ["burguer", "italian", "french"]
  # ------------------------------------------------

  # BEHAVIOR
  def open?
    return (Time.now.hour >= 19 && Time.now.hour < 22) ? true : false
  end

  def book(client_name)
    @clients << client_name
  end

  def print_booked_clients
    @clients.each do |client|
      puts "- #{client}"
    end
  end
end
