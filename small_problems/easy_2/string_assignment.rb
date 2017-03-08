name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

#BOB
#BOB

#First 'Bob' is assigned to the variable name. save_name is then assigned the value of the variable name, which means that 
#save_name and name are pointing to the same object: the string contained in name. That object is then permanently mutated
#with #upcase!. Both variable are still ponting to the same object, putsing them yields the same output.