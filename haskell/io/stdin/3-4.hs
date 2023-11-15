module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  as <- fmap (map read . words) getLine :: IO [Int]-- print if `mod` 3 == 0  
  let as' = filter (\x -> x `mod` 3 == 0) as
  mapM_ print as'
