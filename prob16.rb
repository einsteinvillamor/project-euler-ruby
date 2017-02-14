## DONE!!!
#2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
#What is the sum of the digits of the number 2^1000?
#https://projecteuler.net/problem=16
#
#1366 ANS
#2 ms

start = Time.now
def power_of_two_sum(power)
  n = (2 ** power).to_s.split("")
  n.reduce(0) {|acc,e| acc + e.to_i}
end

puts power_of_two_sum(1000)
puts Time.now - start
