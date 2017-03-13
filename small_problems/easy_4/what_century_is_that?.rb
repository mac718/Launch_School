def century(year)
  cent = (year / 100 + 1).to_s
  if year.to_s[-1] == '0'
    cent = (cent.to_i - 1).to_s
  end
  
  if (11..13).include?(cent[-2..-1].to_i)
    suffix = 'th'
  elsif cent[-1] == '1'
    suffix = 'st'
  elsif cent[-1] == '2'
    suffix = 'nd'
  elsif cent[-1] == '3'
    suffix = 'rd'
  else
    suffix = 'th'
  end
  cent + suffix
end