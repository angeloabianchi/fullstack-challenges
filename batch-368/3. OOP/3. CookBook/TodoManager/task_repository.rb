class TaskRepository

  def initialize
    @tasks = []
  end

  # Add a task to the repository
  def add_task(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index - 1]
  end

end
