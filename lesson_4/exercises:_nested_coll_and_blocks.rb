#Exercise 1
arr1[2][1][3]
arr2[1][:third][0]
arr3[2][:third][0][0]
hsh1['b'][1]
hsh2[:third].keys[0]

#Exercise 2
arr1[1][1] = 4
arr2[2] = 4
hsh1[:first][2][0] = 4
hsh2[['a']][:a][2] = 4

#Exercise 3
a = 2
b = [2, [3, 8]]

#Exercise 4
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.values.flatten.each do |word|
  word.each_char do |char|
    puts char if %(a e i o u).include?(char.downcase)
  end 
end

#or

hsh.values.flatten.each do |word|
  word.chars.each do |char|
    puts char if %(a e i o u).include?(char.downcase)
  end
end

#Exercise 5
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a 
  end
end