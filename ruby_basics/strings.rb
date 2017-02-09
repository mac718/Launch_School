#Create a String
string = String.new

#Quote Confusion
puts "It's now 12 o'clock."

#Ignoring Case
name = 'Roger'
puts name.downcase == 'RoGeR'.downcase ? true: false
puts name.downcase == 'DAVE'.downcase ? true: false

#Dynamic String
name = 'Elizabeth'

puts "Hello, #{name}!"

#Combining Names
first_name = 'John'
last_name = 'Doe'

full_name = first_name + ' ' + last_name
puts full_name

#Tricky Formatting
state = 'tExAs'

state.capitalize!

puts state

#Goodbye, not Hello
greeting = 'Hello!'
greeting.gsub!(greeting, 'Goodbye!')
puts greeting

#Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')

#Pluralize
words = 'car human elephant airplane'

words.split(' ').each do |word|
  puts word + 's'
end

#Are You There?
colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

