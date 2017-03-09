puts "Please write words or multiple words:"
words = gets.chomp.strip

words_array = words.split

total_characters = 0

words_array.each { |word| total_characters += word.size }

puts "There are #{total_characters} characters in \"#{words}\"."