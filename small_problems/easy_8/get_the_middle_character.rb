def center_of(str)
  if str.length.odd?
    str[str.length / 2]
  else 
    str[(str.length / 2) - 1] + str[str.length / 2]
  end
end 