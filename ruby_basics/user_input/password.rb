PASSWORD = "passWord"

loop do 
  puts ">>Please enter your password:"
  password_attempt = gets.chomp.strip
  break if password_attempt == PASSWORD
  puts ">>Invalid password!"
end

puts "Hello!"
