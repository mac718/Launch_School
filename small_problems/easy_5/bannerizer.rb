def print_in_box(str)
  top_and_bottom_border = '+' + '-' * (str.size + 2) + '+'
  blank_line = '|' + ' ' * (str.size + 2) + '|'
  line_padding = ' ' * (((str.size + 2) - str.size) / 2)
  
  puts top_and_bottom_border
  puts blank_line 
  puts '|' + line_padding + str + line_padding + '|'
  puts blank_line
  puts top_and_bottom_border
end 

