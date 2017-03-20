def cleanup(str)
  str.gsub(/\W+/, ' ')
end

# or

def cleanup(str)
  str_arr = str.split('')
  str_arr.map! do |char|
    if ('a'..'z').include?(char) || ('A'..'Z').include?(char)
      char
    else
      char = ' '
    end 
  end 
  str_arr.join.squeeze(' ')
end