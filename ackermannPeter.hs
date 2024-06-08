ackermannPeter :: (Num t1, Num t2, Eq t1, Eq t2) => t1 -> t2 -> t2
ackermannPeter m n = 
  if (m == 0) 
    then n+1 
  else if (n == 0) 
    then ackermannPeter (m-1) 1 
  else ackermannPeter (m-1) (ackermannPeter m (n-1))