def show_multiplicative_average(arr)
  mult_avg = format('%.3f', (arr.reduce(:*) / arr.size.to_f).round(3))
  puts "The result is #{mult_avg}"
end