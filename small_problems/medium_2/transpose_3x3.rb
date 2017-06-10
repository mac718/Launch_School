def transpose(matrix)
  transposed_matrix = []
  outer_index = 0 
  inner_index = 0 
  
  while outer_index < matrix.length 
    transposed_matrix << matrix.map do |sub_arr|
      sub_arr[inner_index]
    end 
    outer_index += 1 
    inner_index += 1 
  end 
  transposed_matrix
end

# FE - if we know the matrix will be 3x3, crude parallel assignemnt can be used to transpose the matrix in place 

def transpose(matrix)
  matrix[0][0], matrix[1][0], matrix[2][0], matrix[0][1], matrix[1][1], 
  matrix[2][1], matrix[0][2], matrix[1][2], matrix[2][2] = 
  matrix[0][0], matrix[0][1], matrix[0][2], matrix[1][0], 
  matrix[1][1], matrix[1][2], matrix[2][0], matrix[2][1], matrix[2][2] 
end