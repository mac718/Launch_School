num_group = []

puts "==> Enter the first number:"
num_group << gets.chomp.strip.to_i

puts "==> Enter the second number:"
num_group << gets.chomp.strip.to_i

puts "==> Enter the third number:"
num_group << gets.chomp.strip.to_i

puts "==> Enter the fourth number:"
num_group << gets.chomp.strip.to_i

puts "==> Enter the fifth number:"
num_group << gets.chomp.strip.to_i

puts "==> Enter the sixth number:"
num_group << gets.chomp.strip.to_i

last_num = num_group.pop

if num_group.include?(last_num)
  puts "The number #{last_num} appears in #{num_group}."
else
  puts "The number #{last_num} does not appear in #{num_group}."
end


