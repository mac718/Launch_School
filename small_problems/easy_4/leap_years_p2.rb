def leap_year?(year)
  if year <= 1752 && year >= 4
    true if year % 4 == 0
  else
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  end
end