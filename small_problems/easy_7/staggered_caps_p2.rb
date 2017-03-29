def staggered_case(str, first_char = true)
  staggered_str = ''
  switch = true
  str.chars.each do |char|
    if switch && char =~ /[A-z]/
      staggered_str << char.upcase
      switch = !switch
    elsif !switch && char =~ /[A-z]/
      staggered_str << char.downcase
      switch = !switch
    else
      staggered_str << char 
    end 
  end
  staggered_str
end 