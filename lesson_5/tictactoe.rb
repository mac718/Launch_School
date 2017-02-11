require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]].freeze       # diagonals
INITIAL_MARKER = " ".freeze
PLAYER_MARKER = "X".freeze
COMPUTER_MARKER = "O".freeze
GOES_FIRST = "choose".freeze

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  prompt "You're #{PLAYER_MARKER}, computer is #{COMPUTER_MARKER}"
  puts "",
       "     |     |",
       "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}",
       "     |     |",
       "-----+-----+-----",
       "     |     |",
       "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}",
       "     |     |",
       "-----+-----+-----",
       "     |     |",
       "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}",
       "     |     |",
       ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, final_conjunction = 'or', delimiter = ', ')
  case arr.size
  when 0 then ''
  when 1 then arr[0]
  when 2 then "#{arr[0]} #{final_conjunction} #{arr[1]}"
  else
    arr[-1] = "#{final_conjunction} #{arr[-1]}"
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry, that's not a valid choice."
    end
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def find_winning_square(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def evaluate_lines(brd, marker)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, marker)
    break if square
  end
  square
end

def computer_places_piece!(brd)
  square = evaluate_lines(brd, COMPUTER_MARKER)

  square = evaluate_lines(brd, PLAYER_MARKER) if !square

  square = 5 if !square && (brd[5] == INITIAL_MARKER)

  square = empty_squares(brd).sample if !square

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def who_goes_first
   if GOES_FIRST == 'Player' || GOES_FIRST == 'Computer'
    answer = GOES_FIRST.downcase
  else
    prompt "Who do you want to make the first move? (Player(p)/Computer(c))"
    answer = gets.chomp.strip.downcase
    if !['computer', 'player', 'p', 'c'].include?(answer)
      loop do
        prompt "Sorry, that's not a valid entry. Try again."
        answer = gets.chomp.strip
        break if ['computer', 'player', 'p', 'c'].include?(answer)
      end
    end
    answer = 'player' if answer.downcase == 'p'
    answer = 'computer' if answer.downcase == 'c'
  end
    answer.downcase
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == 'player'
    'computer'
  else
    'player'
  end
end

def play_game(brd)
  current_player = who_goes_first
  loop do
    display_board(brd)
    place_piece!(brd, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(brd) || board_full?(brd)
  end
end

player_wins = 0
computer_wins = 0

prompt "Welcome to Tic Tac Toe!"

loop do
  board = initialize_board

  play_game(board)

  display_board(board)

  if someone_won?(board)
    if detect_winner(board) == 'Player'
      player_wins += 1
    elsif detect_winner(board) == 'Computer'
      computer_wins += 1
    end
    prompt "#{detect_winner(board)} won!"
  else
    prompt "it's a tie"
  end

  break if player_wins == 5 || computer_wins == 5

  prompt "Play again? (y or n)"
  answer = gets.chomp.strip
  until ['y', 'n'].include?(answer.downcase)
    prompt("Enter Y to play again or N to exit.")
    answer = gets.chomp.strip
  end

  break if answer.downcase == 'n'
end

if player_wins == 5
  prompt "Player wins!"
elsif computer_wins == 5
  prompt "Computer wins!"
end

prompt "Thanks for playing Tic Tac Toe!"
