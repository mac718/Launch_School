def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if sides.include?(0)
  long = sides[2]
  middle = sides[1]
  short = sides[0]
  
  if sides.uniq.length == 1 
    :equilateral 
  elsif sides.uniq.length == 2 && (short + middle) > long
    :isosceles
  elsif sides.uniq.length == 3 && (short + middle) > long
    :scalene 
  else 
    :invalid
  end
end