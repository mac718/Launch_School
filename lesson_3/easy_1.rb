#Question 1
1
2
2
3

#Question 2
#! is generally the last character in the names of methods that mutate the caller, 
#though this is not necessarily the case. ? is generally the last character in the 
#names of methods that return a boolean value, though this is not necessarily the case.

  #1. != is a 'not equal' sign. It can be used when comparing two values.
  #2. !user_name would yie;d a result of 'false'
  #3. words.uniq! would delete any duplicate entries in the 'words' array.
  #4. Putting ? before something would result in an error.
  #5. Putting ? after something would potentially set up an ternary if/else operation.
  #6. Putting !! before something would yield the something's boolean value.

#Question 3
advice.gsub!('important', 'urgent')

#Question 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) #[1, 3, 4, 5]
numbers.delete(1) #[2, 3, 4, 5]

#Question 5
(10..100).include?(42)

#Question 6
famous_words.prepend("Four score and ")
"Four score and " + famous_words

#Question 7
42

#Question 8
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten

#Question 9
flintstones.assoc("Barney")
