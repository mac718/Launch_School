def xor?(arg1, arg2)
  return true if (arg1 == true && arg2 == false) || 
    (arg1 == false && arg2 == true)
end