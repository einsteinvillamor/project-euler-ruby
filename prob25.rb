## DONE!!!
#The Fibonacci sequence is defined by the recurrence relation:
#Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
#Hence the first 12 terms will be:
#
#What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
#
#https://projecteuler.net/problem=25
#
#4782 ANS
#3 ms

start = Time.now
def prob25
  storage = Hash.new(0)
  (1..10**999).each do |e|
    return e if contain_digits(fib(e,storage))
  end
end

def contain_digits(num)
  num.to_s.length >= 1000 ? true : false
end

def fib(num,storage)
  if num <= 2
    return 1
  elsif (storage[num] > 0) 
    return storage[num]
  end
  storage[num] = fib(num - 1, storage) + fib(num - 2, storage)
  storage[num]
end

puts prob25
puts Time.now - start