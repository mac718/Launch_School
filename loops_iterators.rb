#1
#[1, 2, 3, 4, 5]

#2
answer = ''
while answer != "STOP"
  puts "Type 'STOP' to stop loop"
  answer = gets.chomp
end

#3
arr = ["hi", "hey", "hello"]
arr.each_with_index do |word, index|
  puts "#{index}. #{word}"
end

#4
def countdown(number)
  if number > 0
  puts number
  countdown(number-1)
  end
end