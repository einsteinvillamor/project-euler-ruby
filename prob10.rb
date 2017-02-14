## DONE!!!
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.
#https://projecteuler.net/problem=10
#142913828922 ANS
#23 seconds

start = Time.now
def prime_add(num)
  (3..num).step(2).reduce(2) do |acc,e|
    prime?(e)? acc + e : acc
  end
end

def prime?(num)
  return true if num < 4
  return false if num % 2 == 0
  (3..Math.sqrt(num)).step(2) {|e| return false if num % e == 0}
  true
end

puts prime_add(2000000)
puts Time.now - start