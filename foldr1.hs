foldr1 f acc [] = acc
foldr1 f acc (x:xs) = f x (foldr1 f acc xs)