def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end