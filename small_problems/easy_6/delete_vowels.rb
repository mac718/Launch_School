def remove_vowels(arr)
  vowelless_arr = []
  
  arr.each do |word|
    new_string = ''
    word.split('').each do |letter|
      new_string << letter if !'aeiou'.include?(letter.downcase)
    end 
    vowelless_arr << new_string
  end
  vowelless_arr
end

# or 

def remove_vowels(arr)
  arr.map { |word| word.delete('aeiouAEIOU') }
end
