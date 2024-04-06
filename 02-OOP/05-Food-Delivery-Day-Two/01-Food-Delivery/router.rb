class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run

    @employee = @sessions_controller.signin

    while @running
      if @employee.manager?
        display_manager_tasks
        action = gets.chomp.to_i
        print `clear`
        route_manager_action(action)
      else
        display_rider_tasks
        action = gets.chomp.to_i
        print `clear`
        route_rider_action(action)
      end
    end
  end

  private

  def route_manager_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    else
      puts "Please press 1, 2, 3, 4 or 5"
    end
  end

  def route_rider_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 5 then stop
    else
      puts "Please press 1, 2, 3, 4 or 5"
    end
  end

  def stop
    @running = false
  end

  def display_manager_tasks
    puts '-' * 30
    puts "---- MANAGER MENU! ----"
    puts '-' * 30
    puts "PUTS MANAGER OPTIONS HERE"
    puts "5 - STOP RUNNING"
  end

  def display_rider_tasks
    puts '-' * 30
    puts "---- RIDER MENU! ----"
    puts '-' * 30
    puts "PUTS RIDER OPTIONS HERE"
    puts "5 - STOP RUNNING"
  end
end
