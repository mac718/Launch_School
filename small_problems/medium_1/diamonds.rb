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

# or 

def diamonds(size)
  star = '*'
  space = ' '
  space_counter = (size / 2)
  star_counter = 1 
  loop do 
    break if star_counter == size
    puts (space * space_counter) + (star * star_counter) + (space * space_counter)
    space_counter -= 1 
    star_counter += 2 
  end
  loop do 
    puts (space * space_counter) + (star * star_counter) + (space * space_counter)
    break if star_counter == 1
    space_counter += 1 
    star_counter -= 2 
  end
end

# FE 

def diamonds(size)
  star = '*'
  space = ' '
  space_counter = (size / 2) - 1
  star_counter = 3
  puts (space * (size / 2)) + star + (space * (size / 2))
  loop do 
    break if star_counter == size
    puts (space * space_counter) + star + (space * (star_counter - 2)) + star + (space * space_counter)
    space_counter -= 1 
    star_counter += 2 
  end
  loop do 
    puts (space * space_counter) + star + (space * (star_counter - 2)) + star + (space * space_counter)
    break if star_counter == 3
    space_counter += 1 
    star_counter -= 2 
  end
  puts (space * (size / 2)) + star + (space * (size / 2))
end