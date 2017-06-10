def word_to_digit(str)
  digit_hash = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 
    'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'}
  
  digit_hash.keys.each do |word|
    str.gsub!(/#{word}/, digit_hash[word])
  end 
  str
end