puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp.strip  
puts "something" if answer.downcase == 'y'


