def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |x, y| x * y }.sort
end 