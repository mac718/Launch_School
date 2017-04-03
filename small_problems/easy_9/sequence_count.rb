def sequence(count, first)
  sequence_arr = []
  count.times { |index| sequence_arr << first * (index + 1) }
  sequence_arr
end