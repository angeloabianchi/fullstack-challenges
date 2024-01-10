def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message.to_s.end_with?("?")
    answer = "Silly question, get dressed and go to work!"
  elsif your_message.to_s == "I am going to work right now!"
    answer = ""
  else
    answer = "I don't care, get dressed and go to work!"
  end
  return answer
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message.to_s.end_with?("?")
    if your_message.to_s.upcase == your_message.to_s
      answer = "I can feel your motivation! Silly question, get dressed and go to work!"
    else
      answer = "Silly question, get dressed and go to work!"
    end
  elsif your_message.to_s == "I am going to work right now!" || your_message.to_s == "I AM GOING TO WORK RIGHT NOW!"
    answer = ""
  else
    if your_message.to_s.upcase == your_message.to_s && your_message != ' '
      answer = "I can feel your motivation! I don't care, get dressed and go to work!"
    else
      answer = "I don't care, get dressed and go to work!"
    end
  end
  return answer
end
