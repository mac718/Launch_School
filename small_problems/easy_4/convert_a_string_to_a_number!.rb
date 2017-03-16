def string_to_integer(str)
  rev_str = str.reverse
  
  num = 0
  multiplier = 1

  rev_str.each_char do |char|
    num += (char.ord - 48) * multiplier
    multiplier *= 10
  end 
  num
end