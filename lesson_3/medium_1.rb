#Question 1
10.times{|number| puts ' ' * number + "The Flintstones Rock!"}

#Question 2
#(42 + 2) is an integer and cannot be concatenated with a string. These would fix the problem:
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"

#Question 3
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors
end
#Changed the begin/end to a while

  #Bonus 1
  #number % dividend == 0 determines if the expression yields and integer answer.

  #Bonus 2
  #The second to last line returns the value of the divisors variable.

#Question 4
#rolling_buffer1 mutates the caller, rolling_buffer2 does not.

#Question 5
#lmit is not defined within the method, which has its own scope. This would work:
def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end
#limit is not initialized within the method, which has its own scope, so passing limit into the method as a paramter would 
#solve the issue.

#Question 6
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

#Instead of using mutating << on the array and non-mutating += on the string, it makes more sense to use non-mutating += on 
#both and returing the two values, which can then be assigned to variabled outside of the method.

#Question 7
#34. The variable 'answer' is not mutated by mess_with_it, so the output is just the orginal value of 'answer' minus 8.

#Question 8
#Yes. The method mutates the orginal hash.

#Question 9
#paper

#Question 10
#no



