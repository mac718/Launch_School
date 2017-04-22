#Exercise 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

name_hash = {}
flintstones.each_with_index do |name, index|
  name_hash[name] = index
end 
name_hash

# or 

index = 0

flintstones.each_with_object({}) do |name, hsh|
  hsh[name] = index
  index += 1 
end 

#Exercise 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_age = 0
ages.each { |_, value| total_age += value }
total

#Exercise 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if{ |_, age| age >= 100 }

# or 

ages.reject { |_, age| age >= 100 }

#Exercise 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

#Exercise 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index{ |first_letters| first_letters =~ /Be/ }

#Exercise 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0..2]
end

#Exercise 7 
statement = "The Flintstones Rock"

letter_count = {}
statement.each_char do |letter|
  if !letter_count.include?(letter) && letter != ' '
    letter_count[letter] = 1 
  elsif letter != ' '
    letter_count[letter] += 1 
  end
end

letter_count

#or 

letter_count = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count 
  letter_count[letter] = letter_frequency if letter_frequency > 0
end

letter_count

#Exercise 8
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
#1 
#3
# The array is being altered while the counter built into the #each method continues to increment. Therefore, the index 
# targeted by each no longer corresponds to the element corresponding to that index in the original array.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
#1
#2

#Exercise 9
words.split(' ').map{|word| word.capitalize}.join(' ')

#Exercise 10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.values.each do |person, info|
  case person['age']
    when (0..17)
      person["age_group"] = "kid"
    when (18..64)
      person["age_group"] = "adult"
    else
      person["age_group"] = "senior"
  end 
end
munsters

#Exercise 11
total_age = 0 
munsters.each do |name, info|
  total_age += info["age"]  if info["gender"] == "male"
end 
total_age

#Exercise 12
munsters.each do |name, info|
  puts "#{name} is a #{info["age"]} year old #{info["gender"]}"
end 

#Exercise 13
def uuid
  configuation = [8, 4, 4, 4, 12]
  character_set = (0..9).to_s.to_a + ('a'..'f').to_a
  uuid = ''
  
  configuation.each do |number|
    uuid += number.times {print character_set.sample}
    uuid += '-'unless number == 12
  end
  uuid
end

uuid
