def word_contains_at_least_two_p(sentence)
  # TODO: return the first word in `sentence` containing two 'p's or more
  regexp = /([a-zA-Z]*)p([a-zA-Z]*)p([a-zA-Z]*)/
  sentence.match(regexp)[0]
end

def word_before_exclamation_mark(sentence)
  # TODO: return the first word located before an exclamation mark
  # Hint: you may want to use `()` groups!
  regexp = /[a-zA-Z]+\!/
  string = sentence.match(regexp)
  string_without_exclamation = string[0].gsub(/\!/, '')
end

def four_letter_word(sentence)
  # TODO: return the first four-letter word starting with 'b', followed with a comma `,`
  regexp = /b...,/
  string = sentence.match(regexp)
  new_string = string[0].gsub(/,/, '')
end

def last_five_letters(sentence)
  # TODO: return the last five letters of the sentence
  regexp = /.....\z/
  sentence.match(regexp)[0]
end

def word_contains_ll(sentence)
  # TODO: return the first word containing two consecutive 'l'
  regexp = /([a-zA-z]+)ll([a-zA-z]+)/
  sentence.match(regexp)[0]

end

def six_letter_word(sentence)
  # TODO: return the first six-letter word, composed of letters from 'a' to 'r'
  regexp = /\b([a-rA-R]){6}\b/
  sentence.match(regexp)[0]
end

def all_capital_letters(sentence)
  # TODO: return all the capital letters as a string
  # Hint: use `scan` to get all the occurences then `join` them
  regexp = /[A-Z]+/
  letters = sentence.scan(regexp)
  capital_letters = letters.join("")
end
