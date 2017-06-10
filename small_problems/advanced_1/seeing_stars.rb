def star(size)
  space = ' '
  asterisk = '*'
  spaces_between_stars = ((size - 3) / 2)
  outer_buffer = 0
  while spaces_between_stars >= 0 
    puts space * outer_buffer + asterisk + space * spaces_between_stars + 
      asterisk + space * spaces_between_stars + asterisk + space * outer_buffer
    spaces_between_stars -= 1
    outer_buffer += 1
  end 
  puts asterisk * size 
  spaces_between_stars += 1 
  outer_buffer -= 1
  while spaces_between_stars <= ((size - 3) / 2)
    puts space * outer_buffer + asterisk + space * spaces_between_stars +  
      asterisk + space * spaces_between_stars + asterisk + space * outer_buffer
    spaces_between_stars += 1
    outer_buffer -=1
  end
end