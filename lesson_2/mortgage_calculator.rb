def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_f.floor.integer? && num.to_f.floor != 0 && num.to_f > 0
end

prompt('Welcome to the mortgage payment caclulator!')
prompt('Please enter your name: ')

name = ''
loop do
  name = gets.chomp.strip

  if name.empty?
    prompt('Please enter a valid name.')
  else
    break
  end
end

prompt("Hi #{name}!")

loan_amount = ''
loop do
  prompt('What is the total amount of the loan?')
  loop do
    loan_amount = gets.chomp.strip.to_f
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
    apr = gets.chomp.strip.to_f
    if valid_number?(apr) || apr.zero?
      monthly_interest = (apr / 100) / 12
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  prompt('What is the duration of the loan in years?')

  loan_duration = ''
  loop do
    loan_duration = gets.chomp.strip.to_f * 12
    if valid_number?(loan_duration)
      break
    else
      prompt('Please enter a valid number.')
    end
  end

  if apr > 0
    monthly_payment = loan_amount *
                      (monthly_interest /
                      (1 - (monthly_interest + 1)**-loan_duration))
  else
    monthly_payment = loan_amount / loan_duration
  end

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt('Do you want to perform another calculation?
        (Y to calculate again, N to exit)')

  answer = gets.chomp.strip

  until answer.downcase == 'y' || answer.downcase == 'n'
    prompt("Enter Y to calculate again or N to exit.")
    answer = gets.chomp.strip
  end

  if answer.downcase == 'y'
    next
  elsif answer.downcase == 'n'
    break
  end
end

prompt("Thank you for using the mortgage calculator. Good bye!")
