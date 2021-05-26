-- Prática 01 de Haskell - Parte 2
-- Nome: Gabriele Soares Quevedo
module Haskell01parte2 where
import Haskell01parte1
import Haskell01quickstart
import Data.Char

itemize :: [String] -> [String]
itemize x = map htmlItem x

onlyVowels :: String -> String
onlyVowels x = filter listVogal x

onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isElderly x

onlyLongWord :: [String] -> [String]
onlyLongWord x = filter isLongWord x

onlyEven :: [Int] -> [Int]
onlyEven x = filter isEven x

between60and80 :: Int -> Bool
between60and80 x = if(x > 60 && x < 80) then True else False

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter between60and80 x

calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x

countSpaces :: String -> Int
countSpaces x = length(filter isSpace x)
