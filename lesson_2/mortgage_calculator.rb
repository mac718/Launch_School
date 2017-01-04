def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_f.floor.integer? && num.to_f.floor != 0 && num.to_f > 0
end

prompt('Welcome to the mortgage payment caclulator!')

loan_amount = ''
loop do
  prompt('What is the total amount of the loan?')
  loop do
    loan_amount = gets.chomp.to_f
    if valid_number?(loan_amount)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  prompt('What is the APR on the loan?')

  apr = ''
  monthly_interest = ''
  loop do
    apr = gets.chomp.to_f
    if valid_number?(apr)
      monthly_interest = (apr / 100) / 12
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  prompt('What is the duration of the loan in years?')

  loan_duration = ''
  loop do
    loan_duration = gets.chomp.to_i * 12
    if valid_number?(loan_duration)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  monthly_payment = loan_amount * (monthly_interest / (1 - (monthly_interest + 1)**-loan_duration))

  prompt("Your monthly payment is: $#{monthly_payment}")

  prompt('Do you want to perform another calculation? (Y to calculate again)')
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end

prompt("Thank you for using the mortgage calculator. Good bye!")
