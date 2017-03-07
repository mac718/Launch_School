def sum(num)
  total = 0
  num_arr = num.to_s.split('')
  (num_arr.size).times{ |index| total += num_arr[index].to_i }
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45