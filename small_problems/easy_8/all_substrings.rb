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

# or 

def substrings(str)
  subs = [] 
  start_index = 0 
  loop do 
    start_index.upto(str.length - 1) do |end_index|
      subs << str[start_index..end_index]
    end 
    start_index += 1 
    break if start_index == str.length 
  end
  subs
end