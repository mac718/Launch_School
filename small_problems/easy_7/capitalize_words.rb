def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

def word_cap(str)
  word_arr = str.split
  word_arr.map do |word|
    word[0].upcase +
    word[1..-1].downcase
  end
  word_arr.join(' ')
end