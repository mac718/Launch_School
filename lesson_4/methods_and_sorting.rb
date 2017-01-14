#Exercise 1
[1, 2, 3] #The last statement in the block is 'hi', which is a truthy value, so the block will evaluate to true for all 
#elements of the array.

#Exercise 2
#According to the documentation, #count counts the number of elements in an array for which the given block returns true.

#Exercise 3
[1, 2, 3] #reject returns a new array consisting of array elements for which the block eveluates to false. Since puts
#returns nil, the block will evalute to false for every element in this instance.

#Exercise 4
{'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
#each_with_obejct takes a method object and a block. The method object in this instance is '{}', which indicates that 
#a hash populated by the outcome of the block will be the returned value. The block itself has two arguments, which, here, are 
#'value' and 'hash'. They represnt the current element being iterated over by each_with_object and the collection object 
#fed by the block, respectively. So, here, the block assigns the first letter of each element of the caller array to the keys
#of the returned hash and sets the elements themselves as the values.

#Exercise rne
#According to the documentation, hash#shift removes the first value/key pair from a hash and returns them as an array.

#Exercise 6
#11 - #pop removes and returns the value of the last element of the array that calls it. In this case, #size is then called on
#the string returned by #pop, which is 'caterpillar', which is 11 characters long.

#Exercise 7
#True - The las statement in the block is num.odd? which will evaluate to true as the calling array contains an odd number.

#Exercise 8
##take(n) returns a new array, as indicated by the documnetation, consisting of the the first n elements of the array and is 
#not destructive. This could also be determined by running the method in irb and then checking the value of the original array. 

#Exercise 9
[nil, 'bear']
#map always returns an array and since the first value passed into map does not pass the condition, nil is returned.

#Exercise 10
[1, nil, nil]
#1 is not greater than one so, the first element is returned as is, but the other two elements pass the first condition and 
#are putsed, which returns nil. #map returns an array of the values returned by the block, so the reult is [1, nil, nil].

#Exercise 11
arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

#Exercise 12
books.sort_by do |hash|
  hash[:published]
end
