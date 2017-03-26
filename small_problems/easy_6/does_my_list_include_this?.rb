def include?(arr, search_value)
  arr.each { |elem| return true if elem == search_value }
  false
end

# or 

def include?(arr, search_value)
  index = 0 
  while index < arr.length
    return true if arr[index] == search_value 
    index += 1 
  end 
  false
end