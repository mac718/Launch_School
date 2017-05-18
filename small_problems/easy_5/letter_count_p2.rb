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

# or 

def word_sizes(str)
  word_size_count = Hash.new(0)
  word_arr = str.split 
  
  word_arr.each do |word|
    word = word.gsub(/\W+/, '')
    word_size_count[word.length] += 1 
  end 
  
  word_size_count
end