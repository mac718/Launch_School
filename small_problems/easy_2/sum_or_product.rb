puts '>> Please enter and integer greater than 0:'
number = gets.chomp.strip.to_i
if number < 0
  loop do 
    puts ">> Sorry, that's not a valid entry. Try again."
    number = gets.chomp.strip.to_i
    break if number > 0
  end
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
sum_or_product = gets.chomp.strip
if !['s', 'p'].include?(sum_or_product.downcase)
  loop do 
    puts ">> Sorry, that's not a valid entry. Try again."
    sum_or_product = gets.chomp.strip
    break if ['s', 'p'].include?(sum_or_product.downcase)
  end
end

total = 0

if sum_or_product.downcase == 's'
  total = number.downto(1).reduce(:+)
  puts "The sum of the numbers between 1 and #{number} is #{total}"
elsif sum_or_product.downcase == 'p'
  total = number.downto(1).reduce(:*)
  puts "The product of the numbers between 1 and #{number} is #{total}"
end
