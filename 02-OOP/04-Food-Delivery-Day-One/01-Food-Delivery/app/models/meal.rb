class Meal
  attr_accessor :id
  attr_reader :name, :price

  def initialize(att = {})
    @id = att[:id]
    @name = att[:name]
    @price = att[:price]
  end

end
