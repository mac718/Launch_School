def substrings_at_start(str)
  substring_arr = []
  index = 0 
  loop do 
    substring_arr << str[0..index]
    index += 1 
    break if index == str.length 
  end 
  substring_arr
end 

# or 

def substrings_at_start(str)
  substring_arr = []
  str.length.times { |index| substring_arr << str[0..index] }
  substring_arr
end 