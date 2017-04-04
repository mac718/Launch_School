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