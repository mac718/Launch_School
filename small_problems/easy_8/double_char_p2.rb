def double_consonants(str)
  doubled_str = ''
  str.chars.each do |char|
    if 'bcdfghjklmnpqrstvwxyz'.include?(char.downcase)
      doubled_str << char * 2 
    else
      doubled_str << char 
    end
  end 
  doubled_str
end 