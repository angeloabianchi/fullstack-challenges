class Crop
  attr_reader :grains

  def initialize
    @grains = 0
  end

  def ripe?
    return @grains >= 15 ? true : false
  end


end
