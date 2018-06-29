{- 
 - Author: Arian Seyediarzilpour
 - CCPS 506, Lab3 
 -}
module Lab3 where


 -- Map implementation 
 myMap f [] = []
 myMap f (xh:xt)= f xh: myMap f xt
 
 -- get element of list function 
 get :: [a] -> Int -> a
 get ls n = 
  if n >= (length ls) then ls!!(length ls - 1)
  else if n <= 1 then ls!!0
  else ls!!(n-1)

 -- Polygon Question Starting: 
 
 data Pg = Polyg Int Float
 
 numOfSides (Polyg s l) = s
 sideLen (Polyg s l) = l
 
 -- get polygon area
 area(Polyg s l) = do
  let a = (l /( fromIntegral 2 * tan(pi / fromIntegral s))) --apothem
  if s < 3 then 0
  else if s == 3 then l ^ 2 * sqrt(fromIntegral 3) / fromIntegral 4
  else if s == 4 then l ^ 2
  else (fromIntegral 1/ fromIntegral 2)*(a * l) * fromIntegral s 
 
 -- check two polygons for equal area
 eqArea(Polyg s1 l1)(Polyg s2 l2) =
  if area(Polyg s1 l1) == area(Polyg s2 l2) then True
  else False
 
 instance Eq Pg where -- equals
  (Polyg s1 l1) == (Polyg s2 l2) = (s1==s2 && l1==l2) 
 
 instance Show Pg where -- show function
  show (Polyg s l) =
   "Polygon has " ++ (show s) ++ " sides each of size " ++ (show l) ++ " meters"
