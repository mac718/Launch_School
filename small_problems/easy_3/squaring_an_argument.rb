def multiply(x, y)
  x * y
end

def square(x)
  multiply(x, x)
end

def power(x, exp)
  if exp == 1
    multiply(x, 1) 
  elsif exp == 2
    multiply(x, x)
  else
    multiply(x, x) * x**(exp-2)
  end
end