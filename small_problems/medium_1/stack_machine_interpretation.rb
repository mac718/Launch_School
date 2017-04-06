def minilang(commands)
  commands_arr = commands.split
  register = 0 
  stack = []
  
  commands_arr.each do |command|
    case
    when command.downcase == command.upcase then register = command.to_i
    when command == 'PUSH' then stack << register
    when command == 'ADD' then register += stack.pop 
    when command == 'SUB' then register -= stack.pop
    when command == 'MULT' then register *= stack.pop
    when command == 'DIV' then register /= stack.pop
    when command == 'MOD' then register %= stack.pop
    when command == 'POP' then register = stack.pop
    when command == 'PRINT' then puts register
    end 
  end 
end 