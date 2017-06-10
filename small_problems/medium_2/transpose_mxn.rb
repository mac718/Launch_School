def transpose(matrix)
  transposed_matrix = []
  inner_index = 0 
  while inner_index < matrix[0].length
    inner_arr = []
    matrix.each do |sub_array|
      inner_arr << sub_array[inner_index]
    end 
    transposed_matrix << inner_arr
    inner_index += 1 
  end 
  transposed_matrix
end