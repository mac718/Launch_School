counter = 1

while counter < 100
  puts counter if counter.odd?
  counter += 1
end

# or 


100.times{ |index| puts index if index.odd? }