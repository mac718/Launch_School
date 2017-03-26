def interleave(arr1, arr2)
  combined_array = [] 
  index = 0 
  loop do
    combined_array << arr1[index]
    combined_array << arr2[index]
    index += 1 
    break if index == arr1.size 
  end 
  combined_array
end

# or

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end