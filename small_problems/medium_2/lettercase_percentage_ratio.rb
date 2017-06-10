def letter_percentages(str)
  lower_upper_or_neither = { lowercase: 0, uppercase: 0, neither: 0 }
  char_arr = str.chars 
  char_arr.each do |char|
    if char =~ /['a-z']/ 
      lower_upper_or_neither[:lowercase] += 1 
    elsif char =~ /['A-Z']/
      lower_upper_or_neither[:uppercase] += 1 
    else 
      lower_upper_or_neither[:neither] += 1 
    end
  end
  values_total = lower_upper_or_neither.values.reduce(:+) 
  lower_upper_or_neither[:lowercase] = (lower_upper_or_neither[:lowercase].to_f / values_total) * 100.0
  lower_upper_or_neither[:uppercase] = (lower_upper_or_neither[:uppercase].to_f / values_total) * 100.0
  lower_upper_or_neither[:neither] = (lower_upper_or_neither[:neither].to_f / values_total) * 100.0
  lower_upper_or_neither
end