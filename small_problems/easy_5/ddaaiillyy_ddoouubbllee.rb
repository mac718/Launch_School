def crunch(str)
  str.squeeze
end

# or

def crunch(str)
  condensed_str = ''
  index = 0
  str.each_char do |char|
     condensed_str << char unless 
        index > 0 && char == str[index - 1]
    index += 1
  end
  condensed_str
end

# or

def crunch(str)
  word_arr = 
    str.split.map { |word|word.scan(/(.)\1*/).join }
end
word_arr.join(' ')
end

# or 

def crunch(str)
  crunched_str = ''
  char_arr = str.chars
  index = 1 
  loop do 
    if char_arr[index] != char_arr[index-1]
      crunched_str << char_arr[index-1]
    end 
    index += 1
    break if index > str.length
  end
  crunched_str
end