## DONE!!!
#The following iterative sequence is defined for the set of positive integers:
#
#n → n/2 (n is even)
#n → 3n + 1 (n is odd)
#
#Using the rule above and starting with 13, we generate the following sequence:
#
#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
#Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
#Which starting number, under one million, produces the longest chain?
#
#NOTE: Once the chain starts the terms are allowed to go above one million.
#https://projecteuler.net/problem=14
#837799 ANS
#31 s

#require 'byebug'

#INEFFICIENT? 31 seconds
start = Time.now
def longest_chain(num)
  #byebug
  chain_num = Hash.new(1)
  (2..num).each do |e|
    n = e
    while n != 1
      if even?(n)
        n /= 2
        chain_num[e] += 1
      else
        n = (3*n) + 1
        chain_num[e] += 1
      end
    end
  end
  largest_hash_key(chain_num)
end

def even?(num)
  num % 2 == 0 ? true : false
end

def largest_hash_key(hash)
  hash.max_by{|k,v| v}[0]
end

puts longest_chain(1000000)
puts Time.now - start
