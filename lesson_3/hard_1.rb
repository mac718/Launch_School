#Question 1
#greeting will be set to nil as unintialized variables passed through an if block are initialzed to nil.

#Question 2
#{a: 'hi there'}
#informal_greeting refers to the same object as greetngs[:a], so when it is modified by <<, a mutating method, the object is
#altered.

#Question 3
#A)
#one is: one
#two is: two
#three is: three
#B)
#one is: one
#two is: two
#three is: three
#C)
#one is: two
#two is: three
#three is: one

#C is the only scenario in which the method mutates the caller such that the object passed in is modified as opposed to reassigned.

#Question 4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    false
  else
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end

#Added an if statement after the splitting of input_string to ensure that adresses with more or less than 4 components 
#immediately yield false. Also changed the break statement in the while loop to instead return false if the number does not 
#pass the is_an_ip_number? test. Last, changed 'return true' at the end of the method to just 'true'.
