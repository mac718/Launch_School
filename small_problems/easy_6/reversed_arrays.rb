def reverse!(arr)
  beg_index = 0
  end_index = -1
  loop do
    arr[beg_index], arr[end_index] = arr[end_index], arr[beg_index]
    beg_index += 1
    end_index -= 1
    break if beg_index > arr.size / 2
  end
  arr
end