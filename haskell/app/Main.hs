module Main where

import Lib

main :: IO ()
main = do
    print $ take 10 $ lexiFreeMonoid $ map return ['A'..'B']
    print $ take 10 $ lexiFreeMonoid2 $ map return ['A'..'B']