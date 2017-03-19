def time_of_day(num)
  delta_hours, delta_minutes = num.divmod(60)
  
  if num.abs < 60 && num < 0 
    delta_hours = 23
  end

  if delta_hours.abs > 23
    delta_hours %= 24
  end

  time = "#{format('%.2d', delta_hours)}:#{format('%.2d', delta_minutes)}"
end