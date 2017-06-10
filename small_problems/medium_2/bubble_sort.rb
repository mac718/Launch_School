def bubble_sort!(arr)
  loop do 
    index = 0
    switch = false 
    loop do 
      if (arr[index] <=> arr[index + 1]) == 1 
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        switch = true
      end 
      index += 1 
      break if index == arr.length - 1 
    end 
    break if switch == false 
  end
  arr
end