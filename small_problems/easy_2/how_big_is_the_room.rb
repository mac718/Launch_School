puts "Enter the length of the room in meters:"
length = gets.chomp.strip

puts "Enter the width of the room in meters:"
width = gets.chomp.strip

square_meters = length.to_f * width.to_f
square_feet = square_meters * 10.7639

puts "The area of the room is #{square_meters} square_meters
  (#{square_feet square feet})."
  