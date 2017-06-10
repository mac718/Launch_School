lights_hash = (1..1000).each_with_object({}) { |num, hsh| hsh[num] = 'on' }

multiple =2 
counter = 1 
loop do 
  lights_hash.each do |light_number, status|
    if light_number % multiple == 0 
      if status == 'on'
        lights_hash[light_number] = 'off'
      else 
        lights_hash[light_number] = 'on'
      end
    end
  end
  multiple += 1 
  counter += 1 
  break if counter > 1000
end 
lights_hash.select { |_ ,status| status == 'on' }
