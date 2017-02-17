require 'pry'

SUITS = ['C', 'S', 'H', 'D'].freeze
CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace'].freeze

def initialize_deck
  deck = []

  SUITS.each do |suit|
    CARDS.each do |card|
      deck << [suit, card]
    end
  end
  deck
end

def deal_cards(player_hand, dealer_hand, deck)
  2.times { player_hand << hit(deck) }
  2.times { dealer_hand << hit(deck) }
end

def ace_equals_one(hand)
  count = 0
  hand.each do |card|
    if card.include?('Ace')
      count += 1
    end
  end
  count
end

def total(hand)
  total = 0
  hand.each do |card|
    if ['Jack', 'Queen', 'King'].include?(card[1])
      total += 10
    elsif card[1] == 'Ace'
      total += 11
    else
      total += card[1]
    end
  end
  count = 0
  if total > 21
    count = ace_equals_one(hand)
  end
  total - (count * 10)
end

def busted?(hand)
  total(hand) > 21
end

def hit(deck)
  card = deck.sample
  deck.delete(card)
  card
end

def display_new_card(hand)
  puts "\n", "New Card: #{hand.last[1]}"
  puts "Current total: #{total(hand)}", "\n"
end
def determine_winnner(player_total, dealer_total, player_hand, dealer_hand)
  if player_total > dealer_total && !busted?(player_hand)
    'player'
  elsif busted?(dealer_hand)
    'dealer busted'
  elsif player_total == dealer_total
    'tie'
  end
end

def display_winner(player_total, dealer_total, player_hand, dealer_hand)
  result =
    determine_winnner(player_total, dealer_total, player_hand, dealer_hand)

  case result
  when 'player'
    puts "\n", "You won!", "\n"
  when 'dealer busted'
    puts "\n", "Dealer busted!You won!", "\n"
  when 'tie'
    puts "\n", "It's a tie!", "\n"
  else
    puts "\n", "Dealer won!", "\n"
  end
end

def clear_screen
  system('clear') || system('cls')
end

puts "Welcome to 21!", "\n"

loop do
  player_hand = []
  dealer_hand = []

  deck = initialize_deck

  #start_game = gets.chomp.strip until start_game == ''

  deal_cards(player_hand, dealer_hand, deck)

  puts "Dealer has: #{dealer_hand[0][1]} and unknown card."
  puts "You have: #{player_hand[0][1]} and #{player_hand[1][1]}."
  puts "Current total: #{total(player_hand)}", "\n"

  answer = nil

  loop do
    puts "(H)it or (s)tay?"
    answer = gets.chomp.strip.downcase
    until ['stay', 's', 'hit', 'h'].include? answer
      puts "Sorry, that's not a valid entry. (H)it(or (s)tay?"
      answer = gets.chomp.strip.downcase
    end
    break if ['s', 'stay'].include?(answer)

    player_hand << hit(deck)

    display_new_card(player_hand)

    break if busted?(player_hand)
  end

  player_total = total(player_hand)

  if busted?(player_hand)
    puts "You busted!"
  else
    puts "\n", "You're staying put! Dealer's turn:", "\n"
  end

  loop do
    break if total(dealer_hand) >= 17 || busted?(dealer_hand) ||
             busted?(player_hand)

    dealer_hand << hit(deck)

    display_new_card(dealer_hand)
  end

  puts "Dealer is staying." if !busted?(dealer_hand) && !busted?(player_hand)

  dealer_total = total(dealer_hand)

  puts "Your total: #{player_total}"
  puts "Dealer's total: #{dealer_total}"

  display_winner(player_total, dealer_total, player_hand, dealer_hand)

  puts "Play again? (y or n)"
  answer = gets.chomp.strip
  until ['y', 'n'].include?(answer.downcase)
    puts("Enter Y to play again or N to exit.")
    answer = gets.chomp.strip
  end

  break if answer.downcase == 'n'

  clear_screen
end

puts "Thanks for playing 21!"
