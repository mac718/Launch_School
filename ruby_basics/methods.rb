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