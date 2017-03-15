def short_long_short(str1, str2)
  comparison = str1.length <=> str2.length

  if comparison == 1
    puts str1 + str2
  else
    puts str2 + str1
  end
end

