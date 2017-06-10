def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_string(str)
  char_arr = str.chars
  rotate_array(char_arr).join
end

def rotate_rightmost_digits(num, rotated_digit)
  num_str = num.to_s
  sliced_num = num_str.slice!(-rotated_digit..-1)
  (num_str + rotate_string(sliced_num)).to_i
end

def max_rotation(num)
  n = num.to_s.length
  while n > 0
    num = rotate_rightmost_digits(num, n)
    n -= 1 
  end 
  num
end

# FE 

def max_rotation(num)
  char_arr = num.to_s.chars
  beg_index = 1 
  rotated_digit_index = 0
  loop do 
    char_arr[rotated_digit_index..-1] = char_arr[beg_index..-1] + [char_arr[rotated_digit_index]]
    beg_index += 1 
    rotated_digit_index += 1 
    break if beg_index > char_arr.length 
  end 
  char_arr.join.to_i
end