-- Prática 01 de Haskell - Parte 1
-- Nome: Gabriele Soares Quevedo
module Haskell01parte1 where

sumSquare :: Int -> Int -> Int
sumSquare x y = x^2 + y^2 

circleArea :: Float -> Float
circleArea r = pi * r^2

age :: Int -> Int -> Int
age anoNasc anoAtual = anoAtual - anoNasc

isElderly :: Int -> Bool 
isElderly idade = idade > 65

htmlItem :: String -> String 
htmlItem a = "<li>" ++ a ++ "</li>"

startsWithA :: String -> Bool
startsWithA str = if (head str) == 'A' then True else False

isVerb :: String -> Bool
isVerb st = if (last st) == 'r' then True else False 

isVowel :: Char -> Bool
isVowel vogal = if(vogal == 'a' || vogal == 'e' || vogal == 'i' || vogal == 'o' || vogal == 'u') then True else False

hasEqHeads :: [Int] -> [Int] ->Bool
hasEqHeads lis lista = if (head lis) == (head lista) then True else False

listVogal :: Char -> Bool
listVogal v = elem v "aeiouAEIOU"

