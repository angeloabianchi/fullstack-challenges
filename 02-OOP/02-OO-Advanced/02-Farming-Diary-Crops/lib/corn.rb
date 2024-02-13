# TODO: code the Corn class
require_relative 'crop'

class Corn < Crop

  def initialize
    super
  end

  def water!
    @grains = @grains + 10
  end

end
