def diamonds(int)
  space_count = int / 2 
  diamond_count = 1 
  counter = 1
  loop do 
    if counter <= int / 2 
      puts ' ' * space_count + '*' * diamond_count + ' ' * space_count
      diamond_count += 2 
      space_count -= 1 
    else
      puts ' ' * space_count + '*' * diamond_count + ' ' * space_count
      diamond_count -= 2 
      space_count += 1 
    end
    counter += 1
    break if counter > int
  end        
end