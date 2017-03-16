def string_to_integer(str)
  rev_str = str.reverse
  
  num = 0
  multiplier = 1

  rev_str.each_char do |char|
    next if char == '-' || char == '+'
    num += (char.ord - 48) * multiplier
    multiplier *= 10
  end 
  
  if str[0] == '-'
    -num
  else
    num
  end
end