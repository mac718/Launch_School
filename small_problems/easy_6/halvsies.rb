def halvsies(arr)
  split_arr = []
  split_arr << 
    first_half = arr.slice(0, (arr.length / 2.0).round)
  split_arr << 
    second_half = arr.slice((arr.length / 2.0).round..arr.last)
  split_arr
end

# or this monstrosity

def halvsies(arr)
  split_arr = []
  first_half = []
  second_half = []
  counter = 0 
  
  if arr.size.odd?
    while counter < (arr.size / 2) + 1
      first_half << arr[counter]
      counter += 1
    end 
    split_arr << first_half
  else 
    while counter < arr.size / 2
      first_half << arr[counter]
      counter += 1
    end 
    split_arr << first_half
  end 
  
  arr.each_with_index do |num, index|
    second_half << num if index > counter -1
  end
  split_arr << second_half
end