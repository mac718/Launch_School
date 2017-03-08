puts 'What is the bill?'
bill_amount = gets.chomp.strip.to_f

puts 'What is the tip percentage?'
tip_percentage = gets.chomp.strip.to_f

tip = bill_amount * (tip_percentage / 100).round(2)
total = bill_amount + tip.round(2)

puts "The tip is $#{tip}"
puts "The total bill is $#{total}"