{- Author: Arian Seyediarzilpour
 - CCPS 506, Lab 3 (Script)
 -}
import Data.Char
import Lab3

main = do

 let ls = ["a-1stSTART", "b-2nd", "c-3rd", "d-4th", "e-5thEND"]
     ls2 = [1, 2, 3, 4, 19, 20]
     p1 = Polyg 5 10
     p2 = Polyg 10 5
     p3 = Polyg 5 10
     p4 = Polyg 3 10
     f x = x * 2 / 10
 -- Testing Q1 Method
 putStrLn "\n\n Consider the following list: "
 print(ls)
 putStrLn "\nCall Data.Char.toUpperget on list"
 print(myMap toUpper "arian seyedi")
 putStrLn "\n\n Consider the following list: "
 print(ls2)
 putStrLn "\n multiply above list by 2 divide by 10"
 print(myMap f ls2)
 
 -- Testing Q2 Method
 putStrLn "\n\n Consider the following list: "
 print(ls)
 putStrLn "\nget 0th in list"
 print( get ls 0)
 putStrLn "\nget 1st in list"
 print( get ls 1)
 putStrLn "\nget 2nd in list"
 print( get ls 2)
 putStrLn "\nget 3rd in list"
 print( get ls 3)
 putStrLn "\nget 4th in list"
 print( get ls 4)
 putStrLn "\nget 5th in list"
 print( get ls 5)
 putStrLn "\nget 6th in list"
 print( get ls 6)

 -- Testing Q3 Method
 putStrLn "\n\n Consider the following polygons: "
 putStrLn "\np1 = Polyg 5 10"
 putStrLn "p2 = Polyg 10 5"
 putStrLn "p3 = Polyg 5 10"
 putStrLn "p4 = Polyg 3 10\n"
 putStrLn "\np1 ==? p2"
 print(p1 == p2)
 putStrLn "\np2 ==? p3"
 print(p2 == p3)
 putStrLn "\np1 ==? p3"
 print(p1 == p3)
 
 putStrLn "\nArea --> p1 ==? p2"
 print(eqArea p1 p2)
 putStrLn "\nArea --> p1 ==? p3"
 print(eqArea p1 p3)
 putStrLn "\nArea --> p2 ==? p3"
 print(eqArea p2 p3)
 
 putStrLn "\nCalc Area p1 = Polyg 5 10"
 print(area p1)
 putStrLn "\nCalc Area p2 = Polyg 10 5"
 print(area p2)
 putStrLn "\nCalc Area p3 = Polyg 5 10"
 print(area p3)
 putStrLn "\nCalc Area p4 = Polyg 3 10"
 print(area p4)
