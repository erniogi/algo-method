module Main where

minDigit :: Int -> Int -> Int
minDigit x y = if x `mod` 10 < y `mod` 10 then x else y

main :: IO ()
main = do
  [a,b] <- map read . words <$> getLine :: IO [Int]
  print $ minDigit a b
