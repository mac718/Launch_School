def crunch(str)
  str.squeeze
end

# or

def crunch(str)
  condensed_str = ''
  index = 0
  str.each_char do |char|
     condensed_str << char unless 
        index > 0 && char == str[index - 1]
    index += 1
  end
  condensed_str
end