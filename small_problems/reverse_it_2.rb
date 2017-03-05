def reverse_sentence(string)
  reversed_array = 
  string.split.reverse.map do |word| 
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  reversed_array.join(' ')
end
puts reverse_sentence('')
puts reverse_sentence('Hello World')
puts reverse_sentence('Walk around the block')