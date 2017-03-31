def substrings(str)
  substring_arr = []
  start_index = 0
  loop do
    end_index = start_index
    loop do
      substring_arr << str[start_index..end_index]
      end_index += 1
      break if  end_index == str.length
    end 
    start_index += 1 
    break if start_index == str.length 
  end 
  substring_arr
end 

def palindromes(str)
  palindromes_arr = []
  substrings(str).each do |sub_str|
    if sub_str == sub_str.reverse && sub_str.length > 1 
      palindromes_arr << sub_str 
    end 
  end 
  palindromes_arr
end

# FE

def substrings(str)
  substring_arr = []
  start_index = 0
  loop do
    end_index = start_index
    loop do
      substring_arr << str[start_index..end_index] if str[start_index..end_index].match(/\w/)
      end_index += 1
      break if  end_index == str.length
    end 
    start_index += 1 
    break if start_index == str.length 
  end 
  substring_arr
end 

def palindromes(str)
  palindromes_arr = []
  substrings(str).each do |sub_str|
    if sub_str.downcase == sub_str.downcase.reverse && sub_str.length > 1 
      palindromes_arr << sub_str 
    end 
  end 
  palindromes_arr
end