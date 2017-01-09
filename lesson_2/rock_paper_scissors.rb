VALID_CHOICES = { 'r' => 'rock',
                  'p' => 'paper',
                  'sc' => 'scissors',
                  'sp' => 'spock',
                  'l' => 'lizard' }

WINNING_COMBOS = { 'rock' => %w(scissors sc lizard l),
                   'paper' => %w(rock r spock sp),
                   'scissors' => %w(paper p lizard l),
                   'spock' => %w(rock r scissors sc),
                   'lizard' => %w(spock sp paper p) }

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  if WINNING_COMBOS.keys.include?(first)
    WINNING_COMBOS[first].include?(second)
  else
    WINNING_COMBOS[VALID_CHOICES[first]].include?(second)
  end
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

def display_current_score(player, computer)
  puts "\n"
  prompt("The current score is >> YOU: #{player}, COMPUTER: #{computer}")
  puts "\n"
end
loop do
  player_wins = 0
  computer_wins = 0

  prompt("Welcome to RPSLS! First to win 5 times wins the game!")
  while player_wins < 5 && computer_wins < 5

    choice = ''

    loop do
      prompt("Choose one: (r)rock, (p) paper, (sc)scissors,
             (sp)spock, (l)lizard")

      choice = gets.chomp.strip

      if VALID_CHOICES.keys.include?(choice)
        choice = VALID_CHOICES[choice]
        break
      elsif VALID_CHOICES.values.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    display_player_choices(choice, computer_choice)

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_wins += 1
    elsif win?(computer_choice, choice)
      computer_wins += 1
    end

    display_current_score(player_wins, computer_wins)

  end

  if player_wins == 5
    prompt("You beat computer! Awesome!")
  else
    prompt("Computer won. Bummer!")
  end

  prompt("Do you want to play again?")
  answer = gets.chomp.strip

  until answer.downcase == 'y' || answer.downcase == 'n'
    prompt("Enter Y to play again or N to exit.")
    answer = gets.chomp.strip
  end

  break if answer.downcase == 'n'
end

prompt("Thank you for playing RPSLS! Good bye!")
