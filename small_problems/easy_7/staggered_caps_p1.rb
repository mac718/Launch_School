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
  str.chars.each_with_index do |char, index|
    if first_cap
      index.even? ? staggered_str << char.upcase : staggered_str << char.downcase
    else
      index.odd? ? staggered_str << char.upcase : staggered_str << char.downcase
    end 
  end
  staggered_str
end 