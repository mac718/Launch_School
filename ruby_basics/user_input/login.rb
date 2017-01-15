USERNAME = "Mike"
PASSWORD = "passWord"

loop do 
  puts ">>Please enter your user name:"
  user_name_attempt = gets.chomp.strip
  
  puts ">>Please enter your password:"
  password_attempt = gets.chomp.strip
  
  break if user_name_attempt == USERNAME && password_attempt == PASSWORD
  
  puts ">>Authorization failed!"
end

puts "Welcome!"
