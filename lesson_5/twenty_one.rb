require 'pry'

SUITS = ['C', 'S', 'H', 'D'].freeze
CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace'].freeze
FACECARD = 10

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

def determine_winnner(player_total, dealer_total, player_hand, dealer_hand)
  if player_total > dealer_total && !busted?(player_hand)
    puts "\n", "You won!"
  elsif busted?(dealer_hand)
    puts "\n", "Dealer busted!You won!"
  else
    puts "\n", "Dealer won!"
  end
end

player_hand = []
dealer_hand = []

deck = initialize_deck

deal_cards(player_hand, dealer_hand, deck)

puts "Dealer has: #{dealer_hand[0][1]} and unknown card."
puts "You have: #{player_hand[0][1]} and #{player_hand[1][1]}."

answer = nil

loop do
  break if answer == 'stay' || busted?(player_hand)
  puts "hit or stay?"
  answer = gets.chomp.strip
  break if answer == 'stay' || busted?(player_hand)
  player_hand << hit(deck)
  puts "\n", "New Card: #{player_hand.last[1]}"
  puts "Current total: #{total(player_hand)}", "\n"
end

player_total = total(player_hand)

if busted?(player_hand)
  puts "\n", "You busted! Dealer wins!"
else
  puts "You're staying put! Dealer's turn:", "\n"
end

loop do
  break if total(dealer_hand) >= 17 || busted?(dealer_hand) ||
           busted?(player_hand)
  dealer_hand << hit(deck)
  puts "New Card: #{dealer_hand.last[1]}"
  puts "Current total: #{total(dealer_hand)}", "\n"
end

dealer_total = total(dealer_hand)

puts "Your total: #{player_total}"
puts "Dealer's total: #{dealer_total}"

determine_winnner(player_total, dealer_total, player_hand, dealer_hand)

puts player_hand.inspect
puts dealer_hand.inspect
