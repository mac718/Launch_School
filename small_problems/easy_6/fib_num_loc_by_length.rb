def find_fibonacci_index_by_length(length)
  fib_num = [1, 1] 
  index = 1
  
  loop do 
    fib_num << fib_num[index] + fib_num[index - 1]
    index += 1 
    break if fib_num[index].to_s.size == length
  end
  
  index + 1
end