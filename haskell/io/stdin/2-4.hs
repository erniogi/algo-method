module Main where

checkDigit :: Int -> Int -> String
checkDigit x y = if x `mod` y == 0 then "Yes" else "No"

main :: IO ()
main = do
  [a,b] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ checkDigit a b
