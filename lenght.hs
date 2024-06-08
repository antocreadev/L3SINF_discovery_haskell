length1 liste = 
  if liste == []
    then 0
  else
    1 + length1(tail liste) 
