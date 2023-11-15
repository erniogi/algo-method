module Main where

rem5 :: Int -> Int
rem5 x = x `mod` 5

main :: IO ()
main = do
  x <- readLn :: IO Int
  print $ rem5 (x :: Int)

