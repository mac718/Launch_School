vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(list)
  word_frequencies = {}
  
  list.each do |item|
    if word_frequencies.keys.include?(item)
      word_frequencies[item] += 1 
    else 
      word_frequencies[item] = 1 
    end
  end
  word_frequencies.each {|k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)