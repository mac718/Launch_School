#1
#1. false
#2. false
#3. false
#4. true
#5. true

#2
def capitalize(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

#3
puts "Enter number"
number = gets.chomp.to_i
if number < 0
  puts "Nope"
elsif number <= 50
  puts "Between 0 and 50"
elsif number <= 100
  puts "between 50 and 100"
else
  puts "Over 100"
end

#4
#1. "FALSE"
#2. "Did you get it right?"
#3. "Alright now!"

#5
def num_range ()
  puts "Enter number"
  number = gets.chomp.to_i
  case 
  when number < 0
    puts "Nope"
  when number <= 50
    puts "Between 0 and 50"
  when number <= 100
    puts "between 50 and 100"
  else
    puts "Over 100"
  end
end

#6
#The if/else statement was not ended. Adding 'end' after the final 'else' would fix the problem.



