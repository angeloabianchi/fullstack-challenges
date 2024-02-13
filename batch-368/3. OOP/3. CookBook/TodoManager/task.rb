class Task
  attr_reader :description, :status

  def initialize(description)
    @description = description
    @status = false
  end

  def mark_as_done!
    @status = true
  end
end
