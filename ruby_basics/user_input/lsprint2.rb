loop do
number_of_lines = nil 

loop do
  puts ">>How many output lines do you want? Enter a number >= 3: (Q to quit)" 
  number_of_lines = gets.chomp.strip
  
  break if number_of_lines.to_i > 2 || number_of_lines.downcase == 'q'
  
  puts ">>That's not enough lines."
end

break if number_of_lines.downcase == 'q'

number_of_lines.to_i.times {puts "Launch Shool is the best!"}

end
