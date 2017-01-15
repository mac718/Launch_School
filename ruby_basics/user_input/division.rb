def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

first_number = nil 
loop do
  puts "Enter the first number:"
  first_number = gets.chomp.strip
  break if valid_number?(first_number)
  puts "Invalid input. Try again."
end

second_number = nil 

loop do
  puts "Enter the second number:"
  second_number = gets.chomp.strip
  if second_number.to_i == 0
    puts "0 is not a valid entry. Try again."
  elsif valid_number?(second_number)
    break
  else
    puts "Invalid entry. Try again"
  end
end

solution = first_number.to_i / second_number.to_i
puts "#{first_number} / #{second_number} is #{solution}"
