def merge(arr1, arr2)
  merged_arr = arr1 + arr2
  loop do 
    index = 0
    swap = false
    loop do 
      if (merged_arr[index] <=> merged_arr[index + 1]) == 1 
        merged_arr[index], merged_arr[index + 1] = merged_arr[index + 1], merged_arr[index]
        swap = true 
      end 
      index += 1 
      break if index == merged_arr.length 
    end
    break if swap == false
  end
  merged_arr
end