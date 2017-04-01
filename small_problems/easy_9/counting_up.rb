def sequence(int)
  (1..int).to_a
end

# FE

def sequence(int)
  if int > 0 
    (1..int).to_a
  else
    (int..-1).to_a 
  end 
end