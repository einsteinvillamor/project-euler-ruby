## DONE!!!
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10001st prime number?
#https://projecteuler.net/problem=7
#
#104743 ANS
#67 ms

start = Time.now
def prime_num(number)
  prime_counter = 0
  num = 2
  while prime_counter != number
    prime_counter += 1 if prime?(num)
    num += 1
  end
  num - 1
end

def prime?(num)
  return true if num < 4
  (2..Math.sqrt(num)).each do |e|
    return false if num % e == 0
  end
  true
end

puts prime_num(10001)
puts Time.now - start