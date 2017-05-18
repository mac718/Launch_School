def stringy(num)
  numstring = ''
  counter = 0
  while counter < num
    if counter.even?
      numstring << '1'
    else
      numstring << '0'
    end
    counter += 1 
  end 
  numstring
end 