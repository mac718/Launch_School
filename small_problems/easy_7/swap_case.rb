def swapcase(str)
  chars = str.split('')
  chars.map! do |char|
    if char.downcase == char 
      char = char.upcase
    else
      char = char.downcase
    end
  end
  chars.join('')
end 
