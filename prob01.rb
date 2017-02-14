## DONE!!!
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
#The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
#https://projecteuler.net/problem=1
#233168 ANS
#2 ms

start = Time.now
def sum_of_999
  sum = 0
  (0..999).each do |i|
    sum += i if (i % 3 == 0) || (i % 5 == 0)
  end
  sum
end

puts sum_of_999
puts Time.now - start
