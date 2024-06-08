-- module Math where 
square :: Num a => a -> a
square x = x * x
quad :: Num a => a -> a
quad x = square(square x) 
greater :: Ord a => a -> a -> a
greater x y 
  | x > y = x
  | otherwise = y

area :: Floating a => a -> a
area r = pi * square r

twice :: (t -> t) -> t -> t
twice f x = f(f x)

main :: IO ()
main = do 
  print(area 5)
  


