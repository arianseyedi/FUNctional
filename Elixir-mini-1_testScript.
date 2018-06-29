##-------------------------------
## Author: Arian Seyediarzilpour
## Lab: 2
## Test Scripts
##-------------------------------
#Test Q1:
IO.puts "\n--------- Q1 Tests ---------\n"
IO.puts "-----Lab2Q1.pow():"
IO.puts Lab2Q1.pow()
IO.puts "-----Lab2Q1.pow(123)"
IO.puts Lab2Q1.pow(123)
IO.puts "-----Lab2Q1.pow(2, 14)"
IO.puts Lab2Q1.pow(2, 14)
IO.puts "-----Lab2Q1.pow(2, 0)"
IO.puts Lab2Q1.pow(2, 0)
IO.puts "-----Lab2Q1.pow(2, -3)"
IO.puts Lab2Q1.pow(2, -3)
IO.puts "-----Lab2Q1.pow(2, -1)"
IO.puts Lab2Q1.pow(2, -1)
IO.puts "-----Lab2Q1.pow(2, 1)"
IO.puts Lab2Q1.pow(2, 1)
IO.puts "-----Lab2Q1.pow(arian)"
IO.puts Lab2Q1.pow("arian")
IO.puts "-----Lab2Q1.pow(arian, 2)"
IO.puts Lab2Q1.pow("arian", 2)
#End of Q1 Test

IO.puts "\n--------- Q2 Tests ---------\n"
#Test Q2:
#-----Test for sumAll------
p = [1, 2, 3, 4]
IO.puts "-----Lab2Q2.sumAll(p) #Expect 10"
IO.puts Lab2Q2.sumAll(p)

p = [1, :v, 3, "p", 2.5, 4, :Error]
IO.puts "-----Lab2Q2.sumAll(p) #Expect 10.5. Should ignore non numbers"
IO.puts Lab2Q2.sumAll(p)

p = []
IO.puts "-----Lab2Q2.sumAll(p) #Expect 0. List is empty"
IO.puts Lab2Q2.sumAll(p)

p = "not a list"
IO.puts "-----Lab2Q2.sumAll(p) #Expect error. Not a list"
IO.puts Lab2Q2.sumAll(p)

#-----Test for sumEven------
p = [1, 2, 3, 4, 6, 1, 20]
IO.puts "-----Lab2Q2.sumEven(p) #Expect 32 must ignore odds."
IO.puts Lab2Q2.sumEven(p)

p = [1, :v, 3, "p", 2.5, 4, :Error]
IO.puts "-----Lab2Q2.sumEven(p) #Expect 4. Should ignore non ints and odds"
IO.puts Lab2Q2.sumEven(p)

p = []
IO.puts "-----Lab2Q2.sumEven(p) #Expect 0. List is empty"
IO.puts Lab2Q2.sumEven(p)

p = "not a list"
IO.puts "-----Lab2Q2.sumEven(p) #Expect error. Not a list"
IO.puts Lab2Q2.sumEven(p)

#-----Test for sumOdd------
p = [1, 2, 3, 4, 6, 1, 20]
IO.puts "-----Lab2Q2.sumOdd(p) #Expect 5 must ignore evens."
IO.puts Lab2Q2.sumOdd(p)

p = [1, :v, 3, "p", 2.5, 4, :Error]
IO.puts "-----Lab2Q2.sumOdd(p) #Expect 4. Should ignore non ints and evens"
IO.puts Lab2Q2.sumOdd(p)

p = []
IO.puts "-----Lab2Q2.sumOdd(p) #Expect 0. List is empty"
IO.puts Lab2Q2.sumOdd(p)

p = "not a list"
IO.puts "-----Lab2Q2.sumOdd(p) #Expect error. Not a list"
IO.puts Lab2Q2.sumOdd(p)

IO.puts "\n--------- Q3 Tests ---------\n"
#Test Q3:
#-----Test for sumAll------
p = fn x -> x * 1.11 end
IO.puts "-----Lab2Q3.performOp([1, 2, 3, 4], p) #Expect [1.11, 2.22, 3.33, 4.44]; op = x * 1.11"
list = Lab2Q3.performOp([1, 2, 3, 4], p)
IO.puts("list is #{inspect(list)}\n")

IO.puts "-----Lab2Q3.performOp([1.4, 2, 3, str, 4.0, :error], p) #Expect [1.554, 2.22, 3.33, str, 4.44, :error]; op = x * 1.11"
list = Lab2Q3.performOp([1.4, 2, 3, "str", 4.0, :error], p)
IO.puts("list is #{inspect(list)}\n")

IO.puts "-----Lab2Q3.performOp([], p) #Expect []; op = x * 1.11"
list = Lab2Q3.performOp([], p)
IO.puts("list is #{inspect(list)}\n")

IO.puts "-----Lab2Q3.performOp([], 2) #Expect error; bad operation"
IO.puts Lab2Q3.performOp([], 2)

##-------------------------------
## End of Test Scripts
##-------------------------------
