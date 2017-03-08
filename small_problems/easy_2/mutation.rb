array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#Moe
#Larry
#CURLY
#SHEMP
#Harpo
#CHICO
#Graucho
#Zeppo

#The values in array2 have been assigned to the values of array1, so both arrays point to the same objects. The second each
#mutates those onjects to which both arrays point, so this is reflected in both array1 and array2.