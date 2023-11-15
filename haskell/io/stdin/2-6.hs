module Main where

-- max of four numbers
maxOfFour :: Int -> Int -> Int -> Int -> Int
maxOfFour a b c d = max (max a b) (max c d)

main :: IO ()
main = do
  [a,b,c,d] <- map read . words <$> getLine :: IO [Int]
  print $ maxOfFour a b c d
