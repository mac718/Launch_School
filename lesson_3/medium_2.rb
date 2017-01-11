#Question 1

#a_outer is 42 with an id of: 85 before the block.
#b_outer is forty-two with an id of: 69925461892760 before the block.
#c_outer is [42] with an id of: 69925461892740 before the block.
#d_outer is 42 with an id of: 85 before the block. Before running the code, I had though d_outer would have a 
  #different object id from a_outer. Interesting to see that Ruby uses the same object in instances where two 
  #variables are assigned to the same value.

#a_outer id was 85 before the block and is: 85 inside the block.
#b_outer id was 69925461892760 before the block and is: 69940068671020 inside the block.
#c_outer id was 69925461892740 before the block and is: 69940068671000 inside the block.
#d_outer id was 85 before the block and is: 85 inside the block.

#a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
#b_outer inside after reassignment is thirty_three with an id of: 69925461892760 before and: 69925461887880 after.
#c_outer inside after reassignment is [44] with an id of: 69925461892740 before and: 69925461887860 after.
#d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

#a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer).
#b_inner is thirty-three with an id of: 69925461887880 inside the block (compared to 69925461887880 for outer).
#c_inner is [44] with an id of: 69925461887860 inside the block (compared to 69925461887860 for outer).
#d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).

#a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block.
#b_outer is thirty_three with an id of: 69925461892760 BEFORE and: 69925461887880 AFTER the block.
#c_outer is [44] with an id of: 69925461892740 BEFORE and: 69925461887860 AFTER the block.
#d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.

#ugh ohhhhh
#ugh ohhhhh
#ugh ohhhhh
#ugh ohhhhh

#QUestion 2

#a_outer is 42 with an id of: 85 before the block.
#b_outer is forty-two with an id of: 69958250043900 before the block.
#c_outer is [42] with an id of: 69958250043880 before the block.
#d_outer is 42 with an id of: 85 before the block.

#a_outer id was 85 before the method and is: 85 inside the method.
#b_outer id was 69958250043900 before the method and is: 69958250043900 inside the method.
#c_outer id was 69958250043880 before the method and is: 69958250043880 inside the method.
#d_outer id was 85 before the method and is: 85 inside the method.

#a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
#b_outer inside after reassignment is thirty_three with an id of: 69958250043900 before and: 69958250039100 after.
#c_outer inside after reassignment is [44] with an id of: 69958250043880 before and: 69958250039080 after.
#d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

#a_inner is 22 with an id of: 45 inside the method (compared to 45 for outer).
#b_inner is thirty-three with an id of: 69958250039100 inside the method (compared to 69958250039100 for outer).
#c_inner is [44] with an id of: 69958250039080 inside the method (compared to 69958250039080 for outer).
#d_inner is 44 with an id of: 89 inside the method (compared to 89 for outer).

#a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method.
#b_outer is forty-two with an id of: 69958250043900 BEFORE and: 69958250043900 AFTER the method.
#c_outer is [42] with an id of: 69958250043880 BEFORE and: 69958250043880 AFTER the method.
#d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method.

#ugh ohhhhh
#ugh ohhhhh
#ugh ohhhhh
#ugh ohhhhh

#Question 3
#My string looks like this now: pumpkins
#My array looks like this now: ["pumpkins", "rutabaga"]

#The '+=' apllied to the string is just a reassignment to a new object that stays within the scope of the method; the caller object itself is not mutated.
#Hoowever, the "<<" method mutates that caller object rather than reassining it to a new value, so the change is permanent.