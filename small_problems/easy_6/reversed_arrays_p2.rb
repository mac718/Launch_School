def reverse(arr)
  reversed_arr = []
  index = -1
  while index >= -arr.size
    reversed_arr << arr[index]
    index -= 1 
  end 
  reversed_arr
end

# or 

def reverse(arr)
  arr.each_with_object([]) do |num, reversed_arr|
    reversed_arr.unshift(num)
  end
end