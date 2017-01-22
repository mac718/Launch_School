#Greeting Through Methods (Part 1)
def hello
  'Hello'
end

def world
  "world"
end

puts "#{hello} #{world}"

#Greeting Through Methods (Part 2)
def hello
  'Hello'
end

def world
  "world"
end
def greet
  "#{hello} #{world}"
end

puts greet

#Make and Model
def car(make, model)
  puts "#{make} #{model}"
end
car('Toyota', 'Corolla')

#Naming Animals
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

#Name Not Found
def assign_name(name = "Bob")
  name
end

#Multiply the Sum
def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

#Random Sentence
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

#Print Me (Part 1)
def print_me
  puts "I'm printing withing the method!"
end

#Print Me (Part 2)
def print_me
  "I'm printing withing the method!"
end