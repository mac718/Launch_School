def oddities(arr)
  odd_arr = []
  arr.each_with_index do |elem, index| 
    odd_arr << elem if index.even?
  end
  odd_arr
end