def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_f.floor.integer?
end

prompt("Welcome to the mortgage payment caclulator!")

loop do 
  prompt("What is the total amount of the loan?")
  loop do
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    break
  else
    puts "Please enter a valid number."
  end
  end

  prompt("What is the APR on the loan?")
  apr = gets.chomp.to_f / 100

  prompt("What is the duration of the loan?")
  loan_duration = gets.chomp.to_i * 12
end



