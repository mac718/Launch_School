def digit_list(number)
   number.to_s.split('').map { |char| char.to_i }
end
puts digit_list(12345).inspect
puts digit_list(1).inspect
