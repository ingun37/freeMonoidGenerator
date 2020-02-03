module Lib
    ( lexiFreeMonoid, lexiFreeMonoid2
    ) where

import Control.Monad

lexiFreeMonoid :: [String] -> [String]
lexiFreeMonoid generator = join $ foldr f [] $ repeat generator
    where f x xs = cart x [""] : map (cart x) xs
          cart xs ys = [x++y | x <- xs, y <- ys]

lexiFreeMonoid2 :: [String] -> [String]
lexiFreeMonoid2 gen = join $ map f [1..]
    where f n = iterate (cart gen) [""] !! n
          cart xs ys = [x++y | x <- xs, y <- ys]