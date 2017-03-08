current_year = Time.now.year

puts 'What is your age?'
age = gets.chomp.strip.to_i

puts 'At what age would you like to retire?'
retirement_age = gets.chomp.strip.to_i

retirement_year = current_year + (retirement_age - age)
years_left = retirement_year - current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_left} of work to go!"