class Order
  attr_reader :meal, :customer, :employee
  attr_accessor :delivered, :id

  def initialize(attr = {})
    @id = attr[:id]
    @meal = attr[:meal]
    @customer = attr[:customer]
    @employee = attr[:employee]
    @delivered = attr[:delivered]
  end

  def delivered?
    @delivered ? true : false
  end

  def deliver!
    @delivered = true
  end

end
