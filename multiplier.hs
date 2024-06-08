multiplier :: Int -> Int -> Int
multiplier 0 _ = 0
multiplier _ 0 = 0
multiplier x y = x + multiplier x (y - 1) 