def staggered_case(str)
  staggered_str = ''
  str.chars.each_with_index do |char, index|
    if index.even?
      staggered_str << char.upcase
    else
      staggered_str << char.downcase
    end
  end
  staggered_str
end

def staggered_case(str, first_char = true)
  staggered_str = ''
  if first_char
    str.chars.each_with_index do |char, index|
      if index.even?
        staggered_str << char.upcase
      else
        staggered_str << char.downcase
      end
    end
  else
    str.chars.each_with_index do |char, index|
      if index.odd?
        staggered_str << char.upcase
      else
        staggered_str << char.downcase
      end
    end
  end
  staggered_str
end 