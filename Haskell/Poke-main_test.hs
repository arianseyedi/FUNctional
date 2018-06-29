{- Author: Arian Seyediarzilpour
 - CCPS 506, Poker Assignment (Script)
 -}
import Data.Char
import Data.List
import Poker

main = do

 let r1w = [(10,'C'), (11,'C'), (12,'C'), (13,'C'), (14,'C')]

     r2w = [(9,'C'), (10,'C'), (11,'C'), (12,'C'), (13,'C')]
     r2l = [(8,'C'), (9,'C'), (10,'C'), (11,'C'), (12,'C')]

     r3w = [(11,'C'), (11,'D'), (11,'H'), (11,'S'), (14,'C')]
     r3l = [(11,'C'), (11,'D'), (11,'H'), (11,'S'), (13,'C')]

     r4w = [(10,'C'), (10,'D'), (10,'H'), (13,'C'), (14,'C')]
     r4l = [(8,'C'), (8,'D'), (8,'H'), (13,'C'), (14,'C')]

     r5w = [(3,'C'), (5,'C'), (8,'C'), (11,'C'), (14,'C')]
     r5l = [(3,'C'), (5,'C'), (8,'C'), (11,'C'), (12,'C')]

     r6w = [(5,'C'), (6,'D'), (7,'H'), (8,'S'), (9,'C')]
     r6l = [(2,'C'), (3,'D'), (4,'H'), (5,'S'), (6,'C')]

     r7w = [(10,'C'), (10,'D'), (10,'H'), (13,'C'), (14,'C')]
     r7l = [(9,'C'), (9,'D'), (9,'H'), (13,'C'), (14,'C')]
            
     r8w = [(10,'C'), (10,'H'), (12,'C'), (12,'D'), (14,'C')]
     r8l = [(10,'C'), (10,'H'), (11,'C'), (11,'D'), (14,'C')]
        
     r9w = [(10,'C'), (10,'H'), (11,'C'), (12,'D'), (14,'C')]
     r9l = [(8,'C'), (8,'H'), (11,'C'), (12,'D'), (14,'C')]
      
     r10w = [(2,'C'), (3,'D'), (4,'H'), (8,'S'), (13,'H')]
     r10l = [(2,'C'), (3,'D'), (4,'H'), (8,'S'), (11,'H')]
     
     ls = [(r1w, r2w), (r2w, r2l), (r3w, r3l), (r4w, r4l), (r5w, r5l), (r6w, r6l), (r7w, r7l), (r8w, r8l), (r9w, r9l), (r10w, r10l)]
     winners = Data.List.map winner ls
 -- Testing Winner
 putStrLn "\n\n Expecting all hand one because they are winner hands!"
 print(winners)

 
