def staggered_case(str, first_char = true)
  staggered_str = ''
  str.chars.each do |char|
    if first_char && char =~ /[A-z]/
      staggered_str << char.upcase
      first_char = !first_char
    elsif !first_char && char =~ /[A-z]/
      staggered_str << char.downcase
      first_char = !first_char
    else
      staggered_str << char 
    end 
  end
  staggered_str
end 