module Main (main) where

import MinDe3 (minDe3)
import System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main = do
  hSetBuffering stdout NoBuffering
  putStrLn "Enter three numbers : "
  x <- readLn :: IO Int
  y <- readLn :: IO Int
  z <- readLn :: IO Int
  putStrLn $ "Le minimum est " ++ show (minDe3 x y z)