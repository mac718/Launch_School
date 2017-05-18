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

# or 

def sum_of_sums(arr)
  total = 0 
  arr.each_with_index do |num, idx|
    sub_arr =[]
    (idx+1).times{ |index| sub_arr << arr[index] }
    sub_sum = sub_arr.reduce(:+)
    total += sub_sum
  end 
  total 
end