def crunch(str)
  str.squeeze
end

# or

def crunch(str)
  condensed_str = ''
  counter = 0
  str.each_char do |char|
    if counter > 0 && char == str[counter - 1]
      nil
    else
      condensed_str << char 
    end
    counter += 1
  end
  condensed_str
end