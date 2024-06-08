partage :: [a] -> ([a], [a])
partage [] = ([], [])
partage [x] = ([x], [])
partage (x:y:xs) = 
  let (xs1, xs2) = partage xs
  in (x:xs1, y:xs2)
  
-- partage (x:y:xs) = (x:xs1, y:xs2)
-- where (xs1, xs2) = partage xs