VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'sp' => 'spock',
                  'l' => 'lizard' }

WINNING_COMBOS = { 'rock' => %w(scissors sc lizard l),
                   'r' => %w(scissors sc lizard l),
                   'paper' => %w(rock r spock sp),
                   'p' => %w(rock r spock sp),
                   'scissors' => %w(paper p lizard l),
                   's' => %w(paper p lizard l),
                   'spock' => %w(rock r scissors sc),
                   'sp' => %w(rock r scissors sc),
                   'lizard' => %w(spock sp paper p),
                   'l' => %w(spock sp paper p) }

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
end

def display_player_choices(player, computer)
  prompt("You chose: #{player}; Computer chose: #{computer}")
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

def display_current_score(score1, score2)
  prompt("The current score is >> You: #{score1}, Computer: #{score2}")
end

loop do
  player_wins = 0
  computer_wins = 0
  while player_wins < 5 && computer_wins < 5

    choice = ''

    loop do
      prompt("Choose one: (r)rock, (p) paper, (sc)scissors,
            (sp)spock, (l)lizard")
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

    display_player_choices(choice, computer_choice)

    display_results(choice, computer_choice)

    display_current_score(player_wins, computer_wins)

    if win?(choice, computer_choice)
      player_wins += 1
    elsif win?(computer_choice, choice)
      computer_wins += 1
    end

  end

  if player_wins == 5
    prompt("You beat computer! Awesome!") 
  else
    prompt("Computer won. Bummer!")
  end

  prompt("Do you want to play again?")
  answer = gets.chomp

  until answer.downcase == 'y' || answer.downcase == 'n'
    prompt("Enter Y to play again or N to exit.")
    answer = gets.chomp.strip
  end

  if answer.downcase == 'y'
    next
  elsif answer.downcase == 'n'
    break
  end
end

prompt("Thank you for playing. Good bye!")
