puts "Enter a name."
name = gets.chomp.strip
if name == ''
  name = "Teddy"
end
  
age = rand(20..200)
puts "#{name} is #{age} years old!"