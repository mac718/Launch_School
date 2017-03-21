def word_sizes(str)
  word_lengths = Hash.new(0)

  str.split.each do |word|
    char_count = 0
    word.each_char do |char|
      if char =~ /\w/
        char_count += 1 
      end 
    end
    word_lengths[char_count] += 1 
  end
  word_lengths
end

