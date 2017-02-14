## DONE!!!
#
#https://projecteuler.net/problem=20
# 
#648 ANS
#5 ms


start = Time.now
def sum_of_factorial(num)
  sum = factorial(num).to_s.split("").map(&:to_i)
  sum.reduce(:+)
end


def factorial(num)
  return 1 if num == 0
  num * factorial(num - 1)
end

puts sum_of_factorial(100)
puts Time.now - start