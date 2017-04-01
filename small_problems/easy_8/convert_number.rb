def reversed_number(int)
  reversed_int_arr = int.to_s.split('').reverse 
  reversed_int_arr.join.to_i 
end 