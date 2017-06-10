def rotate90(matrix)
  number_of_rows = matrix.first.length 
  number_of_columns = matrix.length
  row_index = 0
  rotated_arr = []
  
  while row_index < number_of_rows
    column_index = number_of_columns - 1
    rotated_row_arr = []
    while column_index >= 0 
      rotated_row_arr << matrix[column_index][row_index]
      column_index -= 1 
    end
    row_index += 1
    rotated_arr << rotated_row_arr
  end
  rotated_arr
end