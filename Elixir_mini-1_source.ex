##-------------------------------
## Author: Arian Seyediarzilpour
## Lab: 2
##-------------------------------

defmodule Lab2Q1 do
	
	
	def pow(), do: 0 # Handle no args
	
	# Guard for non-number variables
	def pow(any) when not is_number(any) do
		:error
	end
	
	# Square n
	def pow(n) do
		n * n
	end
	
	# Guard for non-number variables
	def pow(n, m) when not is_number(n) or not is_number(m) do
		:error
	end
	
	# n
	def pow(n, 1), do: n
	
	# 1
	def pow(n, 0), do: 1
	
	# 1/n
	def pow(n, -1), do: 1/n
	
	# when power is positive
	def pow(n, m) when m >= 1 do
		n * pow(n, m - 1)
	end
	
	# when power is negative
	def pow(n, m) when m <= -1 do
		(1/n) * pow(n, m + 1)
	end
end


defmodule Lab2Q2 do
	
	# Sum All numbers
	def sumAll(ls) do
		case ls do
		[ n | tail ] when is_number(n) -> n + sumAll(tail) # normal case
		[ n | tail ] when not is_number(n) -> sumAll(tail) # move on
		[] -> 0 # list empty, return 0
		_ -> :error # not a list, error
		end
	end
	
	# PrivateFunc, return 0 if odd
	defp flatNotEven(n) do
		case n do
		n when rem(n, 2) == 0 -> n
		_ -> 0
		end
	end
	
	# Only sum even integers
	def sumEven(ls) do
		case ls do
		[ n | tail ] when is_integer(n) -> flatNotEven(n) + sumEven(tail) # normal case
		[ n | tail ] when not is_integer(n) -> sumEven(tail) # move on
		[] -> 0 # list empty, return 0
		_ -> :error # not a list, error
		end
	end
	
	# PrivateFunc, return 0 if even
	defp flatNotOdd(n) do
		case n do
		n when rem(n, 2) != 0 -> n
		_ -> 0
		end
	end
	
	# Only sum odd integers
	def sumOdd(ls) do
		case ls do
		[ n | tail ] when is_integer(n) -> flatNotOdd(n) + sumOdd(tail) # normal case
		[ n | tail ] when not is_integer(n) -> sumOdd(tail) # move on
		[] -> 0 # list empty, return 0
		_ -> :error # not a list, error
		end
	end
end


defmodule Lab2Q3 do
	
	
	def performOp(ls, numericOp) when not is_list(ls) or not is_function(numericOp) do
		:error
	end
	
	def performOp(ls, numericOp) do
		performOp_H(ls, [], numericOp)
	end
	
	defp performOp_H(ls, ls_processed, numericOp) do	
		case ls do
		[ n | tail ] when is_number(n) -> performOp_H(tail, ls_processed ++[ numericOp.(n) ], numericOp) # normal case
		[ n | tail ] when not is_number(n) -> performOp_H(tail, ls_processed ++ [ n ], numericOp) # move on
		[] -> ls_processed # list empty, return the processed
		_ -> :error # not a list, error
		end
	end
end
##-------------------------------
## END of All Modules
##-------------------------------
