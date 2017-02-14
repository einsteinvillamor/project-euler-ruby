## DONE!!!
#The sum of the squares of the first ten natural numbers is,
#
#1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)^2 = 55^2 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers 
#and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#https://projecteuler.net/problem=6
#
#25164150 ANS
#3 ms

start = Time.now
def prob6(num)
  ans = 0
  sum1 = 0
  sum2 = 0
  (1..num).each do |e|
    sum1 += e * e
    sum2 += e
  end
  ans = (sum2 * sum2) - sum1
end

puts prob6(100)
puts Time.now - start