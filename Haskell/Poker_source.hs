{- 
 - Author: Arian Seyediarzilpour
 - CCPS 506, Poker Assignment June2018 
 -}
module Poker where
 
 import Data.List -- sort
 import Data.Set -- set
 
 -- determine the winner. Hands do not have to be sorted
 winner (hand1, hand2) = do
  let s_h1 = sortHand hand1
      s_h2 = sortHand hand2
      rh1 = rank_hand s_h1 
      rh2 = rank_hand s_h2
  if rh1!!0 < rh2!!0 then "hand1"
  else if rh2!!0 < rh1!!0 then "hand2"
  else if rh1!!0 == 2 
        then if rh1!!1 >= rh2!!1 
            then "hand1" 
        else "hand2"
  else if rh1!!0 == 3
        then if rh1!!1 >= rh2!!1 
            then "hand1"
        else "hand2"
  else if rh1!!0 == 4 || rh1!!0 == 7
        then if rh1!!1 > rh2!!1
            then "hand1"
        else if rh1!!1 == rh2!!1 && rh1!!2 >= rh2!!2 
            then "hand1"
        else "hand2"
  else if rh1!!0 == 5 || rh1!!0 == 6
        then if rh1!!1 >= rh2!!1
            then "hand1"
        else "hand2"
  else if rh1!!0 == 8 || rh1!!0 == 9
        then if rh1!!1 >= rh2!!1
            then "hand1"
        else "hand2"
  else if rh1!!0 == 9 
        then if rh1!!1 >= rh2!!1
            then "hand1"
        else "hand2"
  else "hand1"
  
 {-- Hand Evaluators--
 *** Every function returns list of 3 variables: 
 *** [rank(0 if not), strength1, strength2] which means different things 
 *** for different cases: e.g. checking for 4 of a kind if 
 *** we get [3, 9, 13] here strength2 means the fifth card of a 
 *** different kind is a King (13). But for a, say, two pairs hand we 
 *** get [8, 9, 13] that means we have two pairs of King and two 
 *** pairs of 9. Some may be missing strength2 if does not apply! 
 --}

 -- Evaluate hand 
 rank_hand s_h = do
  let rk1 = is_royalf s_h
      rk2 = is_straightf s_h
      rk3 = fourOf_kind s_h
      rk4 = is_fullh s_h
      rk5 = is_flush s_h
      rk6 = is_straight s_h
      rk7 = threeOf_kind s_h
      rk8 = two_pairs s_h
      rk9 = one_pair s_h
  if rk1!!0 /= 0 then rk1
  else if rk2!!0 /= 0 then rk2
  else if rk3!!0 /= 0 then rk3
  else if rk4!!0 /= 0 then rk4
  else if rk5!!0 /= 0 then rk5
  else if rk6!!0 /= 0 then rk6
  else if rk7!!0 /= 0 then rk7
  else if rk8!!0 /= 0 then rk8
  else if rk9!!0 /= 0 then rk9
  else [10, fst(s_h!!4), fst(s_h!!3)]
 
 -- is royal flush? Takes a sorted hand (rank 1)
 is_royalf sorted_h = do
  let conseqs = diff sorted_h -- consequative if == 4
      suits = get_suits sorted_h [] -- number of suits
      max_rank = fst (sorted_h !! (length sorted_h - 1)) -- max rank
  if (conseqs == (length sorted_h) - 1) && (suits == 1) && (max_rank == 14) then [1, max_rank]
  else [0, 0]
  
 -- is straight flash? Takes a sorted hand (rank 2)
 is_straightf sorted_h = do
  let conseqs = diff sorted_h
      suits = get_suits sorted_h []
      max_rank = fst (sorted_h !! (length sorted_h - 1)) -- max rank
  if (conseqs == (length sorted_h) - 1) && (suits == 1) && (max_rank < 14) then [2, max_rank]
  else [0, 0]
  
 -- has 4 of a kind? Takes a sorted hand (rank 3)
 fourOf_kind s_h = do
  let res = pairs_h s_h [] 0 0
      isTwoPair = res!!0 == 2
  if isTwoPair && res!!1 == res!!2 then [3, res!!1]
  else [0, 0]
  
 -- has 3 of a kind with a pair (rank 4)
 is_fullh s_h = do 
  let lft_pr = (s_h!!0, s_h!!1)
      rgt_pr = (s_h!!(length s_h-2), s_h!!(length s_h-1))
      lft_three = [s_h!!0, s_h!!1, s_h!!2]
      rgt_three = [s_h!!(length s_h-3), s_h!!(length s_h-2), s_h!!(length s_h-1)]
      cond1 = fst(lft_three!!0) == fst(lft_three!!2) && fst(fst(rgt_pr)) == fst(snd(rgt_pr))
      cond2 = fst(rgt_three!!0) == fst(rgt_three!!2) && fst(fst(lft_pr)) == fst(snd(lft_pr))
  if cond1 then [4, fst(lft_three!!0), fst(fst(rgt_pr))]
  else if cond2 then [4, fst(rgt_three!!0), fst(fst(lft_pr))]
  else [0, 0, 0]
 
 -- is flush? takes a sorted hand. (rank 5) 
 is_flush sorted_h = do
  let suits = get_suits sorted_h []
      diffs = diff sorted_h
      max_rank = fst (sorted_h !! (length sorted_h - 1)) -- max rank
  if suits == 1 && diffs > 4 then [5, max_rank]
  else [0, 0]
  
 -- is straight? Takes a sorted hand (rank 6)
 is_straight sorted_h = do
  let conseqs = diff sorted_h
      suits = get_suits sorted_h []
      max_rank = fst (sorted_h !! (length sorted_h - 1)) -- max rank
      res = pairs_h sorted_h [] 0 0
      has_noPair = res!!0 == 4
  if (conseqs == (length sorted_h) - 1) && (suits > 1) && (max_rank < 14) && has_noPair then [6, max_rank]
  else [0, 0]
  
 -- three of a kind? takes a sorted hand (rank 7)
 threeOf_kind s_h = do 
  let lft_pr = (s_h!!0, s_h!!1)
      rgt_pr = (s_h!!(length s_h-2), s_h!!(length s_h-1))
      lft_three = [s_h!!0, s_h!!1, s_h!!2]
      rgt_three = [s_h!!(length s_h-3), s_h!!(length s_h-2), s_h!!(length s_h-1)]
      md_three = [s_h!!1, s_h!!2, s_h!!3]
      cond1 = fst(lft_three!!0) == fst(lft_three!!2) && fst(fst(rgt_pr)) /= fst(snd(rgt_pr))
      cond2 = fst(rgt_three!!0) == fst(rgt_three!!2) && fst(fst(lft_pr)) /= fst(snd(lft_pr))
      cond3 = fst(md_three!!0) == fst(md_three!!2) && fst(s_h!!0) /= fst(md_three!!0)
  if cond1 then [7, fst(lft_three!!0), maximum(fst(fst(rgt_pr)), fst(snd(rgt_pr)))]
  else if cond2 then [7, fst(rgt_three!!0), maximum(fst(fst(lft_pr)), fst(snd(lft_pr)))]
  else if cond3 then [7, fst(md_three!!0), maximum(fst(s_h!!0), fst(s_h!!4))]
  else [0, 0, 0]
  
 -- two pairs? takes a sorted hand (rank 8)
 two_pairs s_h = do
  let res = pairs_h s_h [] 0 0
      isTwoPair = res!!0 == 3
  if isTwoPair then [8, res!!1, res!!2]
  else [0, 0, 0]
 
 -- one pair? takes a sorted hand (rank 9)
 one_pair s_h = do
  let res = pairs_h s_h [] 0 0
      isaPair = res!!0 == 4
  if isaPair then [9, res!!1, res!!2]
  else [0, 0, 0]
  
 {--******** Helpers below ********--}
 
 -- helpers for #pairs below
 pairs_h [] pairs stren1 stren2 = do
  let s = fromList pairs
  [length s, stren1, stren2]
 
 pairs_h (xh:xt) pairs stren1 stren2 = do
  let item = fst xh
      setLen_bf = length(fromList pairs)
      newPairs = pairs ++ [item]
      setLen_af = length(fromList newPairs)
  if setLen_af == setLen_bf && stren1 < 2 then pairs_h xt newPairs item stren2
  else if setLen_af == setLen_bf then pairs_h xt newPairs stren1 item
  else pairs_h xt newPairs stren1 stren2
  
 -- sort hand low_left to high_right
 sortHand hand = sort hand
 
 -- number of suits in a hand
 get_suits [] suits = do
  let s = fromList suits
  length s
 
 get_suits (xh:xt) suits = do
  let item = snd xh
      newSuits = suits ++ [item]
  get_suits xt newSuits
 
 -- get the difference between the largest and smallest num in sorted list
 diff sorted_h = do
  let felem = fst (sorted_h !! 0)
      lelem = fst (sorted_h !! (length sorted_h - 1))
  lelem - felem
 
 {--******** Helpers End ********--}
 {--******** EOF ********--}
