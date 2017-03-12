def real_palindrome?(input)
  condensed_string = input.scan(/\w/).join.downcase
  reversed_condensed_string = condensed_string.reverse 
  condensed_string == reversed_condensed_string
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false