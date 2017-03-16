def running_total(arr)
  total = 0
  arr.map do |num|
    total += num
  end
end

def running_total(arr)
  total = 0
  arr.each_with_object([]) { |num, arr| arr << total += num }
end
