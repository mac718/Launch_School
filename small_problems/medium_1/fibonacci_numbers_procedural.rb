def fibonacci(nth)
  fib_nums = [1, 1, 2]
  idx = 3
  counter = 1
  while counter <= nth
    fib_nums[idx] = fib_nums[idx - 1] + fib_nums[idx -2]
    idx += 1 
    counter += 1
  end 
  fib_nums[nth-1]
end
