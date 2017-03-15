def running_total(arr)
  total = 0
  arr.map do |num|
    total += num
  end
end