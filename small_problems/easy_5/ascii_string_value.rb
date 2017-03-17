def ascii_value(str)
  value = 0
  str.each_char{ |char| value += char.ord }
  value
end