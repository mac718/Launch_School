def find_dup(arr)
  dup = arr.reject { |num| arr.count(num) < 2 }
  dup[0]
end

# or

def find_dup(arr)
  iterated_nums = []
  arr.each do |num|
    return num if iterated_nums.include?(num)
    iterated_nums << num
  end
end