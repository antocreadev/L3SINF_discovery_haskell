concat1 liste = 
  foldr (++) [] liste

mLength liste = 
  foldr (\x y -> y + 1) 0 liste