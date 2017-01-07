VALID_CHOICES = {'r' => 'rock',
                 'p' => 'paper',
                 'sc' => 'scissors',
                 'sp' => 'spock',
                 'l' => 'lizard'}

WINNING_COMBOS = {'rock' => %w(scissors sc lizard l),
                  'r' => %w(scissors sc lizard l),
                  'paper' => %W(rock r spock sp),
                  'p' => %W(rock r spock sp),
                  'scissors' => %W(paper p lizard l),
                  's' => %W(paper p lizard l),
                  'spock' => %W(rock r scissors sc),
                  'sp' => %W(rock r scissors sc),
                  'lizard' => %W(spock sp paper p),
                  'l' => %W(spock sp paper p)}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
   WINNING_COMBOS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: (r)rock, (p) paper, (sc)scissors, (sp)spock, (l)lizard")
    choice = gets.chomp

    if VALID_CHOICES.keys.include?(choice)
      choice = VALID_CHOICES[choice]
      break
    elsif VALID_CHOICES.values.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.values.to_a.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
