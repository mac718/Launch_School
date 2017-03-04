def repeat(string, number)
  number.times{ puts string }
end

repeat('hello', 1)
repeat('hello', 3)
repeat('hello', 0)
repeat('', 4)