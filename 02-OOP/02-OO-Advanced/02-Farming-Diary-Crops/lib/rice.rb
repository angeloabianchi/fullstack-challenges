# TODO: code the Rice class
require_relative 'crop'

class Rice < Crop

  def initialize
    super
  end

  def water!
    @grains = @grains + 5
  end

  def transplant!
    @grains = @grains + 10
  end

end
