class View

  def ask_user_for_description
    puts "What is the description?"
    gets.chomp
  end

  def show_tasks(tasks)
    tasks.each_with_index do |task, index|
      p "#{index + 1} - [#{task.status ? "x" : " "}] #{task.description} "
    end
  end

  def choose_task_to_mark_done
    puts "What task you already finished?"
    gets.chomp.to_i
  end

end
