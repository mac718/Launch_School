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

#Exercise 6
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  incremented_hash = {}
  hash.map do |key, value|
    incremented_hash[key] = value + 1
  end
 incremented_hash
end

#Exercise 7
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |array|
  array.select do |num|
    num % 3 == 0
  end
end

#Exercise 8
container_hash = {}
arr.each do |sub_arr|
  container_hash[sub_arr[0]] = sub_arr[1]
end
container_hash

#Exercise 9
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd? 
  end
end

#Exercise 10
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}


hsh.map do |key, value|
  if value[:type] == 'fruit'
    value[:colors].map do |v|
      v.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end