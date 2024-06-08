sommeAcc :: (Eq t, Num t) => t -> t -> t
sommeAcc n acc
  | n == 0    = acc
  | otherwise = sommeAcc (n - 1) (acc + n)