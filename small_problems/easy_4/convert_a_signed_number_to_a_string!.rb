def signed_integer_to_string(int)
  digit_arr = []
  mod_factor = 10 
  
  loop do 
    break if mod_factor > int
    digit_arr << int % mod_factor / (mod_factor / 10)
    mod_factor *= 10 
  end

  digit_arr << int / (mod_factor / 10) 
  
  digit_arr << '+' if int > 0

  digit_arr.reverse.join
end