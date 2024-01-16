def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.

  race_array.each_with_index do |horse, index|
    race_array[index] = ("#{index + 1}-#{horse}!")
  end
  p race_array.sort {|x, y| y <=> x }
  return race_array.sort {|x, y| y <=> x }
end

# horse_racing_format!(["Abricot du Laudot", "Black Caviar", "Brigadier Gerard"])
