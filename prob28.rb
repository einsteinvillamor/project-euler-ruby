# Euler 28
# http://projecteuler.net/index.php?section=problems&id=28
# Starting with the number 1 and moving to the right in a
# clockwise direction a 5 by 5 spiral is formed as follows:
#
# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
#
# It can be verified that the sum of the numbers on the diagonals is 101.
#
# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
#https://projecteuler.net/problem=28
#
#

start = Time.now
def prob28
  sum = 1
 
  (3..1001).step(2).each do |n|
    n_squared = n*n
 
    sum += n_squared + (n_squared - n + 1) + (n_squared - 2*n + 2) + (n_squared - 3*n + 3)
  end
  sum
end 
puts prob28
puts Time.now - start