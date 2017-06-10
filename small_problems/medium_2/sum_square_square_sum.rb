def sum_square_difference(int)
  square_of_sums = ((1..int).reduce(:+))**2 
  sum_of_squares = (1..int).reduce { |total, num| total += num**2 }
  
  square_of_sums - sum_of_squares  
end