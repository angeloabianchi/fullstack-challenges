def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  new_string = ''
  if a_string == ''
    return false
  else
    cleaned_string = a_string.downcase.gsub(/[^a-z]/, '')
    i = 1
    while i <= cleaned_string.size do
      new_string = new_string + cleaned_string[cleaned_string.size - i]
      i = i + 1
    end

    puts "new string - #{new_string}"
    puts "cleaned_string - #{cleaned_string}"

    return cleaned_string == new_string
  end
end

palindrome?("Madam, I'm Adam!")
