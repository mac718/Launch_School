def fizzbuzz(num1, num2)
  new_arr = (num1..num2).map do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 5 == 0 
      'Buzz'
    elsif num % 3 == 0 
      'Fizz'
    else 
      num 
    end 
  end 
  puts new_arr.join(', ')
end 