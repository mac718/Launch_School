def sum_of_sums(arr)
  total = 0
  counter = 1 
  loop do
    prog_sum = 0 
    counter.times { |index| prog_sum = prog_sum + arr[index] }
    total += prog_sum
    counter += 1
    break if counter > arr.size 
  end
  total
end 