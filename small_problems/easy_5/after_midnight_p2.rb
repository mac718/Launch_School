def before_midnight(time)
  hours = time[0..1].to_i 
  minutes = time[3..4].to_i 
  
  delta_hours = 24 - hours 
  delta_minutes = 60 - minutes

  if delta_minutes > 0
    delta_hours -= 1
  end
  
  if hours == 0 && minutes == 0
    delta_hours = 0 
    delta_minutes = 0 
  end

  total_minutes = (delta_hours * 60) + delta_minutes
end

def after_midnight(time)
  hours = time[0..1].to_i 
  minutes = time[3..4].to_i 
  
  delta_hours = hours
  delta_minutes = minutes
  
  if hours == 24 
    delta_hours = 0 
  end
  
  total_minutes = (delta_hours * 60) + delta_minutes
end
