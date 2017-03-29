def multiply_list(arr1, arr2)
  product_arr = []
  arr1.zip(arr2) { |x, y| arr3 << x * y }
  product_arr
end 

# or 

def multiply_list(arr1, arr2)
  product_arr = []
  index = 0
  loop do 
    product_arr << arr1[index] * arr2[index]
    index += 1 
    break if index == arr1.size 
  end
  product_arr
end 

# or 

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |x, y| x * y }
end 