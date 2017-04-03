def rotate_array(arr)
  arr[1..-1] << arr[0]
end

# FE

def rotate_string(str)
  char_arr = str.chars
  rotate_array(char_arr).join
end