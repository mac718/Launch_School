def balanced?(string)
  parentheses_arr = string.scan(/[()]/)
  return true if parentheses_arr.empty?
  return false if parentheses_arr.length.odd?
  return false if parentheses_arr[0] != '('
  return false if parentheses_arr.last != ')'
  true
end