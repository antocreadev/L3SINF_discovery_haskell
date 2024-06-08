map1 liste fct = 
  if liste == [] 
    then []
  else
    fct (head liste) : map1 (tail liste) fct