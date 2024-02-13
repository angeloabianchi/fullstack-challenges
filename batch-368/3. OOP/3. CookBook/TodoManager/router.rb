class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      # ask user what he/she wants to do
      puts "What do you want to do next?"
      puts "1. I Want to add a new task"
      puts "2. I Want to list my tasks"
      puts "3. I Want to mark a task as done"
      puts "0. I Want quit the program!"

      user_choice = gets.chomp.to_i

      # dispatch action to the controller
      case user_choice
      when 1
        @controller.create_task
      when 2
        @controller.print_tasks
      when 3
        @controller.mark_task_to_done
      when 0
        puts "Goodbye!!"
        break
      else
        puts "Wrong input. Try again!"
      end
    end
  end
end
