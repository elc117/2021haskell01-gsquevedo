-- Prática 01 de Haskell - Parte 2
-- Nome: Gabriele Soares Quevedo
module Haskell01parte2 where
import Haskell01parte1
import Haskell01quickstart
import Data.Char

--1
itemize :: [String] -> [String]
itemize x = map htmlItem x

--2
onlyVowels :: String -> String
onlyVowels x = filter listVogal x

--3
onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isElderly x

--4
onlyLongWord :: [String] -> [String]
onlyLongWord x = filter isLongWord x

--5
onlyEven :: [Int] -> [Int]
onlyEven x = filter isEven x

--6
between60and80 :: Int -> Bool
between60and80 x = if(x > 60 && x < 80) then True else False

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter between60and80 x

--8
calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x

--7
countSpaces :: String -> Int
countSpaces x = length(filter isSpace x)

--9
charFound :: Char -> String -> Bool
charFound x y = if length(filter (==x)y) > 0 then True else False
