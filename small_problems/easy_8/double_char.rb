def repeater(str)
  doubled_str = ''
  str.chars.each { |char| doubled_str << char * 2 }
  doubled_str
end 