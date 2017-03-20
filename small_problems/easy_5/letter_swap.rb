def swap(str)
  word_arr = str.split
  word_arr.map! do |word|
    last_char = word.slice!(-1)
    first_char = word.slice!(0, 1)
    word = last_char + word + first_char
  end 
  word_arr.join(' ')
end