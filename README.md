# FUNctional
This repository is dedicated to my beginner projects in Haskell and Elixir.

### Intro:
Functional programming is FUN! I personally think it definitely made me a better programmer in general, given that it is based a very different view of how a set of instructions are executed and structured. Functional programming is pure by nature which makes parallel programming a lot easier.  
I would like to thank professor [Alex Ufkes](https://ca.linkedin.com/in/alex-ufkes-37154844 "His Linked In Page")
 for teaching an awesome course in Summer 2018 on Comparative Programming Languages. I learned a great deal from him. The projects 1 and 2 are from this course. 

### 1. Elixir starter mini-project:

* Here is what I have implemented:  
  - Write a module containing functions to compute powers. One arg is squared by default, two
args will be the first number raised to the second. Zero args should evaluate to 0. Nonnumeric
args should return :error  
  - Write a module containing separate functions to calculate each of the following:  
      i. Sum of even integer values in a list.    
      ii. Sum of odd integer values in a list.    
      iii. Sum of ALL numeric values in a list.   
      Hint: The list may contain any mix of types! Be sure to check for this.   
  - Write a module with a function that applies some operation (add 1, multiply by 2,
you make it up) to every numeric value in a list. The list may contain non-numeric
values – these should remain unchanged. The function should be accepted as an
argument. That is, your function must be higher-order. Do not use Enum.

### 2. Haskell starter mini-projects: 
1. The following methods were implemented:  
   * Write your own recursive version of the map function, just like we did with filter.  
   * Write a function that takes an integer and a List as arguments. If the integer argument is n, return the nthelement of the list. If n is less than or equal to 1, return the first value. If n is greater than the length of the list, return the last value.
   * Create a custom type for representing regular polygons with two fields –number of sides and side length. Create functions for checking equality (same side length and count), computing area, and checking for same area. When checking equality, you should define your function as an instance of Eq. Also, create a custom show function (instance of Show).  
 
2. **Poker Hand Evaluator** was part of my end-of-term project. I implemented a method that evaluates two poker hands of 5. It uses basic poker ranks to distinguish different ranks, and in an event of a tie (i.e. two hands of the same rank, e.g. Straight) it looks at the high cards or high pairs until one hands is a winner. Identical hands result in *hand1* as the winner.
    
