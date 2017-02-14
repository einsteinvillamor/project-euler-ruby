## DONE!!!
#Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
#there are exactly 6 routes to the bottom right corner.
#graph in the https://projecteuler.net/problem=15
#
#How many such routes are there through a 20×20 grid?
#https://projecteuler.net/problem=15
#
#137846528820 ANS
#2 ms

start = Time.now
def prob15(grid1,grid2)
  #For memoization
  memo = Hash.new(0)
  #COMBINATORICS: Calculates all the possible routes
  #(grid1 + grid2)! / (grid1! * grid2!)
  ans = factorial(grid1+grid2,memo) / (factorial(grid1,memo)*factorial(grid2,memo))
end

def factorial(num,memo)
    if num < 2
        return 1
    elsif memo[num] > 0
        return memo[num]
    end
    memo[num] = num * factorial(num - 1,memo)
    memo[num]
end

puts prob15(20,20)
puts Time.now - start

