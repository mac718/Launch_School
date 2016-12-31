#1
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|number| puts number}

#2
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|number| puts number if number > 5}

#3
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select {|number| number % 2 != 0}

#4
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].unshift(0).push(11)

#5
arr.pop 
arr << 3

#6
arr.uniq

#7
Hashes consist of key/value pairs in no particular order whereas arrays are ordered lists of data.

#8
h1 = {a: 3, b: 10, c: 2}
h2 = {:a => 3, :b => 10, :c =>2}

#9
1. h[:b]
2. h[:e] = 5
3. h.delete_if{|k, v| v < 3.5}

#10
Yes:

a = [b: 3, c: 5, d: 'hello']
h = {a: [1, 2, 3], b: [3, 4, 5]}

#11
Ruby-doc.org is my current favorite Ruby API; simple, easy to use, and comprehensive.

#12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#13
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#14
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = [:email, :address, :phone]

contacts.each do |person, hash|
  fields.each do |field|
    hash[field] = contact_data.first.shift
  end
end

#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|word| word.start_with?('s')}
arr.delete_if{|word| word.start_with?('s') || word.start_with?('w')}

#16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
a.map! do |phrase|
  phrase.split(' ')
end

a.flatten

#17
These hashes are the same!
