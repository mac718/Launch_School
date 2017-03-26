def letter_case_count(str)
  character_counts = Hash.new(0)
  character_counts[:lowercase] = str.scan(/[a-z]/).size 
  character_counts[:uppercase] = str.scan(/[A-Z]/).size 
  character_counts[:neither] = str.scan(/[^A-z]/).size
  character_counts
end