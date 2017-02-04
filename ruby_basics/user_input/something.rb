loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.strip
  break if %(y n).include?(answer.downcase)
  puts "Invalid input! Please enter a y or n."
end 

puts "something" if answer.downcase == 'y'


