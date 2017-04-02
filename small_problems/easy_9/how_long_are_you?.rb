def word_lengths(str)
  word_arr = str.split
  word_arr.map { |word| "#{word} #{word.length}" }
end