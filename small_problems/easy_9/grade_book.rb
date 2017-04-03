def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3 
  case 
  when average < 60 then 'F'
  when average < 70 then 'D'
  when average < 80 then 'C'
  when average < 90 then 'B'
  when average < 100 then 'A'
  end 
end