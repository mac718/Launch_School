def friday_13th(year)
  month = 1 
  thirteenths = 0
  loop do 
    thirteenths += 1 if Time.new(year, month, 13).friday?
    month += 1 
    break if month > 12 
  end 
  thirteenths
end