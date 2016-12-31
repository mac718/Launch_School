#1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

arr = family.select{|k, v| k == :sisters || k == :brothers}.values.flatten

#2
h1 = {a: 6, b: 7}
h2 = {c: 8, d: 9}

p e = h1.merge(h2)
p h1
p f = h1.merge!(h2)
p h1

#3
h = {a: 6, b: 7, c: 8, d: 9}

h.each{|k, v| puts k}
h.each{|k, v| puts v}
h.each{|k, v| puts "#{k} #{v}"}

#4
person[:name]

#5
h = {a: 6, b: 7, c: 8, d: 9}
h.has_value?(7)

#6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
arr = []
          
words.map do |word|
 arr << word.split('').sort.join
end

h = {}

arr.each_with_index do |word, index|
  if !h.has_key?(word)
    h[word] = [words[index]]
  else
    h[word] << words[index]
  end
end

h.each {|k, v| p v}

#7
'my_hash' uses a symbol, :x, as a key, whereas 'my_hash2' uses the string contained in the variable, x as a key.

#8
B 