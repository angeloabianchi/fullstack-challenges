def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  sum = 0

  if min > max
    sum = -1
  else
    array = (min..max).to_a
    for num in array
      sum = sum + num.to_i
    end
  end

  return sum

end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  sum = 0

  if min > max
    sum = -1
  else
    array = (min..max).to_a
    i = 0

    while i < array.count do
      sum = sum + array[i].to_i
      i = i + 1
    end
  end

  return sum
end

sum_with_for(0,5)

sum_with_while(0,5)
