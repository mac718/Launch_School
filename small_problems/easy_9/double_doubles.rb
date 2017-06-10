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

# or 

def twice(number)
  number_str = number.to_s 
  if number_str.length.even?
    if number_str[0..((number_str.length / 2) - 1)] == 
        number_str[((number_str.length / 2))..-1]
      return number
    end 
  end 
  number * 2 
end