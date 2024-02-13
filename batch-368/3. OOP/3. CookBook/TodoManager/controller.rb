require_relative "view"
require_relative "task"
require_relative "task_repository"

class Controller

  def initialize
    @view = View.new
    @repo = TaskRepository.new()
  end

  def create_task
    # 1. Ask user what is the desc
    desc = @view.ask_user_for_description
    # 2. Create a Task with the given desc
    task = Task.new(desc)
    # 3. store it in the repo
    @repo.add_task(task)
  end

  def print_tasks
    # 1. Get all tasks from repo
     tasks = @repo.all
    # 2. Send tasks to View
    @view.show_tasks(tasks)
  end

  def mark_task_to_done
    # 1. Ask use to choose the task that we will change the status to done
    task_index = @view.choose_task_to_mark_done
    # 2. Get task from repo
    done_task = @repo.find(task_index)
    # 3. Mark task as done
    done_task.mark_as_done!
  end

end
