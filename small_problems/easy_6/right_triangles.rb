def triangle(num)
  star_number = 1 
  space_number = num - 1
  while star_number <= num 
    puts ' ' * space_number + '*' * star_number
    star_number += 1 
    space_number -= 1 
  end 
end 

def upsidedown_triangle(num)
  star_number = num 
  space_number = 0
  while star_number <= num 
    puts ' ' * space_number + '*' * star_number
    star_number -= 1 
    space_number += 1 
  end 
end 

def triangle(num, corner)
  case corner
  when 'lr'
    star_number = num 
    space_number = 0
    while star_number > 0 
      puts ' ' * space_number + '*' * star_number
      star_number -= 1 
      space_number += 1 
    end
    when 'ur'
      star_number = 1 
      space_number = num - 1
      while star_number <= num 
        puts ' ' * space_number + '*' * star_number
        star_number += 1 
        space_number -= 1 
      end
    when 'll'
      star_number = num 
      space_number = 0
      while star_number > 0 
        puts '*' * star_number + ' ' * space_number
        star_number -= 1 
        space_number += 1 
      end 
    when 'ul'
      star_number = 1 
      space_number = num - 1
      while star_number <= num 
        puts '*' * star_number + ' ' * space_number
        star_number += 1 
        space_number -= 1 
      end
    end
end 