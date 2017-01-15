puts ">> What is your age in years?"
age_in_years = gets.chomp.strip

age_in_months = age_in_years.to_i * 12

puts "You are #{age_in_months} months old."