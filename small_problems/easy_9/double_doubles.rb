def twice(int)
  digit_arr = int.to_s.split('')
  
  return int * 2 if digit_arr.size.odd?
  
  first_half = digit_arr[0..digit_arr.size/2 - 1]
  second_half = digit_arr[digit_arr.size/2..-1]
  
  if first_half == second_half
    int 
  else
    int * 2 
  end
end