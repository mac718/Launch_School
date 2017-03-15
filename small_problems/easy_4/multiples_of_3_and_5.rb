def multisum(num)
  iterator = 0
  arr = []
  loop do
    if iterator % 3 == 0 || iterator % 5 == 0 
      arr << iterator
    end
    break if iterator >= num 
    iterator += 1
  end 
  arr.reduce(:+)
end 