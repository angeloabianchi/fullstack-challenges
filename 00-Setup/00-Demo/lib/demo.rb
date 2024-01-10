# frozen_string_literal: true

def circle_area(radius)
  if radius.negative?
    area = 0
  else
    area = 3.14 * (radius * radius)
  end

  return area
end
