#Unpredictable Weather (Part 1)

sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts 'The sun is so bright!'
end

#Unpredictable Weather (Part 1)

sun = ['visible', 'hidden'].sample

unless sun == 'visible'
  puts 'The clouds are blocking the sun!'
end

#Unpredictable Weather (Part 3)

sun = ['visible', 'hidden'].sample

puts 'The clouds are blocking the sun!' unless sun == 'visible'
puts 'The sun is so bright!' if sun == 'visible'

#True or False
boolean = [true, false].sample

boolean ? puts ("I'm true!"): puts ("I'm false!")

#Truthy Number
My favorite number is 7. #Any value that is not nil or false is regarded as truthy by Ruby. Therefore, in this instance where 
#number is equal to 7, the if condition evaluates to true.

#Stoplight (Part1)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts "Go!"
when 'yellow'
  puts "Slow down!"
when 'red'
  puts "Stop!"
end

#Stoplight (Part2)
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts "Go!"
elsif stoplight == 'yellow'
  puts "Slow down!"
else
  puts "Stop!"
end

#Sleep Alert
status = ['awake', 'tired'].sample

status_response = if status == 'awake'
                    "Be productive!"
                  else
                    "Go to sleep!"
                  end
                  
puts status_response

#Cool Numbers
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end
#The if condition was originally checking the veracity of a new assignment rather than the the value of the randomly generated 
#number initiall assigned to number.

#Stoplight (Part 3)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!' 
else puts 'Stop!'
end