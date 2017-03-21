def word_sizes(str)
  word_lengths = {}
  str.split.each do |word|
    if word_lengths.keys.include?(word.size)
      word_lengths[word.size] += 1 
    else 
      word_lengths[word.size] = 1
    end
  end 
  word_lengths
end