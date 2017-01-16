def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil

loop do 
puts ">> Please enter a positive or negative integer:"
num1 = gets.chomp

break if valid_number?(num1)

puts ">> Invalid input. Only non-zero integers are allowed."
end

loop do 
puts ">> Please enter a positive or negative integer:"
num2 = gets.chomp

break if valid_number?(num2)

puts ">> Invalid input. Only non-zero integers are allowed."
end



until (num1.to_i * num2.to_i < 0)
  puts ">> Sorry, one integer must be positive and one must be negative."

  puts ">> Please enter a positive or negative integer:"
  num1 = gets.chomp.to_i

  puts ">> Please enter a positive or negative integer:"
  num2 = gets.chomp.to_i
end

puts ">>#{num1} + #{num2} = #{num1 + num2}"



