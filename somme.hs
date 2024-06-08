somme:: (Eq n, Num n) => n -> n
somme n =
  if (n == 0)
    then 0
  else 
    n + somme(n-1)