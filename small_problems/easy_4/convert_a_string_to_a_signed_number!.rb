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

def string_to_signed_integer(string)
  
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end