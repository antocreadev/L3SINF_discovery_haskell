filter1 :: (a -> Bool) -> [a] -> [a]
filter1 fct liste =
  if null liste
    then []
  else if fct (head liste)
    then head liste : filter1 fct (tail liste)
  else filter1 fct (tail liste)