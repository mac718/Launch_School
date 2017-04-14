def word_to_digit(str)
  number_hash = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
    'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}
  
  
  str.split.map do |word|
    if number_hash.keys.include?(word.downcase)
      word = number_hash[word.downcase]
    else 
      word 
    end
  end.join(' ')
end 

p word_to_digit('Please call me at five five five one two three three. Thanks.') 
