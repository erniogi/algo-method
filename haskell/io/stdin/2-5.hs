module Main where

averageOfThree :: Int -> Int -> Int -> Int
averageOfThree x y z = fromIntegral (x + y + z) `div` 3

main :: IO ()
main = do
  [a,b,c] <- map read . words <$> getLine :: IO [Int]
  print $ averageOfThree a b c
