class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  def initialize
    @age = 0
    @is_dead = false
    @fruits = 0
    @height = 0
  end

  def dead?
    if @age == 100
      @is_dead = true
    elsif @age > 50 && @age < 100
      # Introduce a probability factor based on age
      may_die!(@age)
    else
      @is_dead = false
    end
  end


  def one_year_passes!
    if !dead?
      @age = @age + 1
      if @age <= 5
        grow!
      elsif @age > 5 && @age < 10
        grow!
        @fruits = produce_fruits!
      elsif @age == 10
        grow!
        @fruits = 2 * produce_fruits!
      elsif @age > 10 && @age < 15
        @fruits = 2 * produce_fruits!
      else
        @fruits = 0
      end
    end
  end

  def pick_a_fruit!
    if @fruits > 0
      @fruits = @fruits - 1
    end
  end

  attr_accessor :age, :fruits, :height
  attr_reader :is_dead

  private
  def may_die!(age)
    probability_of_dying = (age - 50) / 50.0
    @is_dead = rand < probability_of_dying
  end

  def grow!
    @height = @height + 1
  end

  def produce_fruits!
    return 100
  end
end
