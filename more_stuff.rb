#1
def has_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "No match."
  end
end

#2
Nothing. The block is not called.

#3
Exception handling is a means by which errors and special cases can be anticipated 
and rendered non-fatal to the program.

#4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#5
No ampersand is included before the method parameter, "block".